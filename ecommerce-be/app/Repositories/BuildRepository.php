<?php

namespace App\Repositories;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;

class BuildRepository
{
    protected Model|Builder $query;
    protected array $params = [];
    protected string $modelClass;

    public function __construct(string $modelClass)
    {
        $this->modelClass = $modelClass;
        $this->query = $modelClass::query();
    }

    public function setParameters(array $params): self
    {
        $this->params = $params;
        return $this;
    }

    public function filter(string $column, string $value): self
    {
        $this->query = $this->query->where($column, 'LIKE', '%' . $value . '%');
        return $this;
    }

    public function orderBy(string $column, string $direction = 'asc'): self
    {
        $this->query = $this->query->orderBy($column, $direction);
        return $this;
    }

    public function with(array $relations): self
    {
        $this->query = $this->query->with($relations);
        return $this;
    }

    public function where(string $column, mixed $value): self
    {
        $this->query = $this->query->where($column, $value);
        return $this;
    }

    public function whereIn(string $column, array $values): self
    {
        $this->query = $this->query->whereIn($column, $values);
        return $this;
    }

    public function limit(int $limit): self
    {
        $this->query = $this->query->limit($limit);
        return $this;
    }

    public function get(): Collection
    {
        return $this->query->get();
    }

    public function first(): ?Model
    {
        return $this->query->first();
    }

    public function findOrFail(int $id): Model
    {
        return $this->query->findOrFail($id);
    }

    public function getQuery(): Builder
    {
        return $this->query;
    }

    public function reset(): self
    {
        $this->query = $this->modelClass::query();
        return $this;
    }
}
