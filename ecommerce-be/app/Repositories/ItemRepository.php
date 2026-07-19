<?php

namespace App\Repositories;

use App\Models\Item;
use App\Models\ItemPrice;
use App\Repositories\BaseRepository;
use App\Traits\RoleTrait;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Arr;
use App\Repositories\Support\ColumnValueCriteria;
use App\Models\Image;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use App\Constants\Config;
class ItemRepository extends BaseRepository
{
    use RoleTrait, ColumnValueCriteria;

    protected Collection $collection;

    public function __construct()
    {
        $this->setModel(new Item);
        $this->cacheKey = 'items-get';
        $this->collection = new Collection();
    }

    

    public function itemUpdateWithImage(int $id, array $params): Item
    {
        /**get fillable should be before accessing the model */
        $this->setFillable();

        // Extract item_prices before filtering (it's not in fillable)
        $itemPrices = Arr::get($params, 'item_prices', null);

        $this->model = $this->findOrFail($id);
        $data = array_intersect_key(
            $params,
            array_flip($this->fillable)
        );
        unset($data['store_id']);

        // Sanitize description to prevent XSS attacks
        if (isset($data['description'])) {
            $data['description'] = $this->sanitizeHtml($data['description']);
        }

        $this->filesUpload();
        $this->model->update($data);

        // Handle item prices - delete existing and create new ones
        $this->handleItemPrices($itemPrices, true);

        return $this->model->fresh();

    }

    public function itemCreateWithImage(array $params): Item
    {
        /**get fillable should be before accessing the model */
        $this->setFillable();

        // Extract item_prices before filtering (it's not in fillable)
        $itemPrices = Arr::get($params, 'item_prices', null);

        $data = array_intersect_key(
            $params,
            array_flip($this->fillable)
        );

        // Sanitize description to prevent XSS attacks
        if (isset($data['description'])) {
            $data['description'] = $this->sanitizeHtml($data['description']);
        }

        if (isset($data['store_id'])) {
            $data['store_id'] =$this->optimus()->decode($data['store_id']);
        }

        // Create the item first
        $this->model = $this->model->create($data);

        // Then upload files
        $this->filesUpload();

        // Create item prices if provided (no deletion needed for new items)
        $this->handleItemPrices($itemPrices, false);

        return $this->model->fresh();
    }

     /**
     * Filter the resource
     * @param array $parameters
     * @return self
     */
    public function filterQuery(array $parameters): self
    {
        $this->setParameters($parameters);
        $filters = $this->pregSplit('@,@', Arr::get($parameters, 'filters', ''));
        foreach ($filters as $filterKeys => $filterValues) {
            [$column, $value] = $this->pregSplit('@:@', $filterValues);
            if (method_exists($this, $column)) {
                call_user_func([$this, $column], $value);
            }
        }
        $this->with();
        $this->orderBy(Arr::get($parameters, 'orderBy', 'created_at:desc'));
        $radius = (float) Arr::get($parameters, 'radius', Config::MAX_DISTANCE);
        $this->collection = $this->model->get()
        ->filter(function ($item) use ($radius) {
            return $item->store && $item->store->distance <= $radius;
        })
        ->sortBy(function ($item) {
            return $item->store->distance ?? PHP_INT_MAX;
        })
        ->values();
        return $this;
    }

        /**
        * Get the resource collection
        * @return Collection
        */  
    public function getCollection(): Collection
    {        
        return $this->collection;
    }

    public function filesUpload(): void
    {
        $request = app()->make('request');

        if (!$request->hasFile('images')) {
            return;
        }

        $files = $request->file('images');
        if (!is_array($files)) {
            $files = [$files];
        }

        // Reset all images to non-primary
        $this->model->images()->update(['is_primary' => 0]);

        foreach ($files as $file) {
            if (!$file->isValid()) {
                continue;
            }

            $originalName = $file->getClientOriginalName();
            $fileName = uniqid() . '-' . $originalName;
            $filePath = 'images/uploads/' . $fileName;

            // Optimize image before saving
            $optimizedImage = $this->optimizeImage($file);
            $optimizedImage->save(public_path($filePath), 85); // 85% quality

            $image = new Image([
                'thumbnail' => $filePath,
                'path' => $filePath,
                'name' => $originalName,
                'is_primary' => $request->input('primaryImageName') === $originalName,
                'size' => filesize(public_path($filePath))
            ]);

            $this->model->images()->save($image);
        }

        $this->updatePrimaryImageFromRequest($request);
    }

    private function optimizeImage($file)
    {
        $manager = new ImageManager(new Driver());
        $image = $manager->read($file->getPathname());

        // Get original dimensions
        $width = $image->width();
        $height = $image->height();

        // Set maximum dimensions (adjust as needed)
        $maxWidth = 1920;
        $maxHeight = 1080;

        // Only resize if image is larger than maximum dimensions
        if ($width > $maxWidth || $height > $maxHeight) {
            $image->scale($maxWidth, $maxHeight);
        }

        // Convert to JPEG for better compression (if not already JPEG)
        if ($file->getClientOriginalExtension() !== 'jpg' && $file->getClientOriginalExtension() !== 'jpeg') {
            $image->toJpeg(85);
        }

        return $image;
    }

    /**
     * Sanitize HTML to prevent XSS attacks
     * @param string $html
     * @return string
     */
    private function sanitizeHtml(string $html): string
    {
        if (empty($html)) {
            return $html;
        }

        // Remove dangerous tags
        $dangerousTags = ['script', 'iframe', 'object', 'embed', 'form', 'input', 'button', 'style', 'meta', 'link'];
        foreach ($dangerousTags as $tag) {
            $html = preg_replace('#</?' . $tag . '[^>]*>#is', '', $html);
        }

        // Remove dangerous event handlers
        $dangerousEvents = ['onclick', 'onload', 'onerror', 'onmouseover', 'onmouseout', 'onfocus', 'onblur', 'onchange', 'onsubmit'];
        foreach ($dangerousEvents as $event) {
            $html = preg_replace('#\s' . $event . '\s*=\s*["\'][^"\']*["\']#is', '', $html);
            $html = preg_replace('#\s' . $event . '\s*=\s*[^>\s]*#is', '', $html);
        }

        // Remove javascript: protocol from href and src attributes
        $html = preg_replace('#(href|src)\s*=\s*["\']\s*javascript:#is', '$1=""', $html);
        $html = preg_replace('#(href|src)\s*=\s*javascript:#is', '$1=""', $html);

        // Remove data: protocol from src attributes (can be used for XSS)
        $html = preg_replace('#src\s*=\s*["\']\s*data:#is', 'src=""', $html);

        // Remove any on* attributes
        $html = preg_replace('#\son[a-z]+\s*=\s*["\'][^"\']*["\']#is', '', $html);
        $html = preg_replace('#\son[a-z]+\s*=\s*[^>\s]*#is', '', $html);

        return $html;
    }

    /**
     * Handle item prices creation/update
     * @param string|null $itemPrices JSON string of item prices
     * @param bool $deleteExisting Whether to delete existing prices first
     * @return void
     */
    private function handleItemPrices(?string $itemPrices, bool $deleteExisting = false): void
    {
        if ($itemPrices === null) {
            return;
        }

        $decodedPrices = json_decode($itemPrices, true);
        if (!is_array($decodedPrices) || empty($decodedPrices)) {
            return;
        }

        // Delete existing item prices if requested (for updates)
        if ($deleteExisting) {
            ItemPrice::where('item_id', $this->model->id)->delete();
        }

        // Create new item prices
        foreach ($decodedPrices as $itemPrice) {
            ItemPrice::create([
                'item_id' => $this->model->id,
                'color_id' => Arr::get($itemPrice, 'color_id'),
                'size_id' => Arr::get($itemPrice, 'size_id'),
                'unit_id' => Arr::get($itemPrice, 'unit_id'),
                'original_price' => Arr::get($itemPrice, 'original_price'),
                'selling_price' => Arr::get($itemPrice, 'selling_price'),
                'online_price' => Arr::get($itemPrice, 'online_price'),
                'qty' => Arr::get($itemPrice, 'qty'),
            ]);
        }
    }


}
