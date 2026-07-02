<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

abstract class AbstractResource extends JsonResource
{
    protected array $fields = [];
    protected array $additionalData = [];

    public function __construct($resource)
    {
        parent::__construct($resource);
    }

    public function setFields(array $fields): self
    {
        $this->fields = $fields;
        return $this;
    }

    public function setAdditionalData(array $data): self
    {
        $this->additionalData = $data;
        return $this;
    }

    public function toArray($request): array
    {
        if ($this->resource instanceof Collection) {
            return $this->collectionToArray();
        }

        return $this->modelToArray();
    }

    protected function collectionToArray(): array
    {
        return $this->resource->map(function ($item) {
            return $this->transformItem($item);
        })->toArray();
    }

    protected function modelToArray(): array
    {
        return $this->transformItem($this->resource);
    }

    protected function transformItem($item): array
    {
        $data = [];

        if (empty($this->fields)) {
            $data = $item->toArray();
        } else {
            foreach ($this->fields as $field) {
                $data[$field] = $item->{$field};
            }
        }

        return array_merge($data, $this->additionalData);
    }

    public static function collection($resource)
    {
        return tap(new static($resource), function ($collection) {
            $collection->collects = null;
        });
    }
}
