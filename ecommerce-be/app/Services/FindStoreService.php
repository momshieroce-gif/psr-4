<?php

namespace App\Services;

use App\Repositories\BuildRepository;
use App\Models\Store;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Facades\DB;

class FindStoreService
{
    protected BuildRepository $repository;
    protected array $params = [];

    public function __construct()
    {
        $this->repository = new BuildRepository(Store::class);
    }

    public function setParameters(array $params): self
    {
        $this->params = $params;
        $this->repository->setParameters($params);
        return $this;
    }

    public function applyFilters(): Collection
    {
        $query = $this->repository->getQuery();

        // Apply geospatial filter if coordinates are provided
        if (isset($this->params['latitude']) && isset($this->params['longitude']) && isset($this->params['radius'])) {
            $this->applyWithinKm($query, $this->params['latitude'], $this->params['longitude'], $this->params['radius']);
        }

        // Apply custom filters
        $filters = $this->parseFilters($this->params['filters'] ?? '');
        foreach ($filters as $column => $value) {
            $this->repository->filter($column, $value);
        }

        // Apply orderBy
        if (isset($this->params['orderBy'])) {
            $orderBy = $this->parseOrderBy($this->params['orderBy']);
            $this->repository->orderBy($orderBy['column'], $orderBy['direction']);
        }

        // Apply relationships
        if (isset($this->params['with'])) {
            $with = $this->parseWith($this->params['with']);
            $this->repository->with($with);
        }

        // Apply limit
        if (isset($this->params['limit'])) {
            $this->repository->limit((int) $this->params['limit']);
        }

        return $this->repository->get();
    }

    public function findOrFail(int $id): Store
    {
        return $this->repository->findOrFail($id);
    }

    protected function applyWithinKm($query, string $latitude, string $longitude, string $radius): void
    {

        $earthRadiusInKm = 6371;
        $radiusFloat = (float) $radius;

        $query->select('*', DB::raw("
            ($earthRadiusInKm * acos(cos(radians($latitude)) 
            * cos(radians(latitude)) 
            * cos(radians(longitude) - radians($longitude)) 
            + sin(radians($latitude)) 
            * sin(radians(latitude)))) AS distance
        "))
        ->havingRaw("distance <= $radiusFloat")
        ->orderBy('distance', 'asc');
    }

    protected function getBoundingBox(string $latitude, string $longitude, string $radius): array
    {
        $lat = (float) $latitude;
        $lon = (float) $longitude;
        $rad = (float) $radius;

        $earthRadius = 6371;
        $radDist = $rad / $earthRadius;

        $minLat = $lat - $radDist;
        $maxLat = $lat + $radDist;
        $minLon = $lon - $radDist / cos(deg2rad($lat));
        $maxLon = $lon + $radDist / cos(deg2rad($lat));

        return [
            'minLat' => $minLat,
            'maxLat' => $maxLat,
            'minLon' => $minLon,
            'maxLon' => $maxLon,
        ];
    }

    protected function parseFilters(string $filters): array
    {
        $result = [];
        $filterPairs = explode(',', $filters);

        foreach ($filterPairs as $pair) {
            $parts = explode(':', $pair);
            if (count($parts) === 2) {
                $result[$parts[0]] = $parts[1];
            }
        }

        return $result;
    }

    protected function parseOrderBy(string $orderBy): array
    {
        $parts = explode(':', $orderBy);
        return [
            'column' => $parts[0] ?? 'created_at',
            'direction' => $parts[1] ?? 'desc',
        ];
    }

    protected function parseWith(string $with): array
    {
        return array_filter(explode(',', $with));
    }
}
