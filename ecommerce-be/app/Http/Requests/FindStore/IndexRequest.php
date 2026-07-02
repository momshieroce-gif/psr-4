<?php

namespace App\Http\Requests\FindStore;

use Illuminate\Foundation\Http\FormRequest;

class IndexRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'filters' => 'nullable|string',
            'orderBy' => 'nullable|string',
            'latitude' => 'nullable|numeric',
            'longitude' => 'nullable|numeric',
            'radius' => 'nullable|numeric',
            'type' => 'nullable|string',
            'with' => 'nullable|string',
            'limit' => 'nullable|integer',
        ];
    }

    public function getFilters(): array
    {
        if (!$this->has('filters')) {
            return [];
        }

        $filters = [];
        $filterPairs = explode(',', $this->input('filters'));
        
        foreach ($filterPairs as $pair) {
            $parts = explode(':', $pair);
            if (count($parts) === 2) {
                $filters[$parts[0]] = $parts[1];
            }
        }

        return $filters;
    }

    public function getOrderBy(): array
    {
        if (!$this->has('orderBy')) {
            return ['column' => 'created_at', 'direction' => 'desc'];
        }

        $parts = explode(':', $this->input('orderBy'));
        return [
            'column' => $parts[0] ?? 'created_at',
            'direction' => $parts[1] ?? 'desc',
        ];
    }

    public function getWith(): array
    {
        if (!$this->has('with')) {
            return [];
        }

        return explode(',', $this->input('with'));
    }

    public function isCollection(): bool
    {
        return $this->input('type') === 'collection';
    }

    public function getLimit(): int
    {
        return (int) $this->input('limit', 12);
    }
}
