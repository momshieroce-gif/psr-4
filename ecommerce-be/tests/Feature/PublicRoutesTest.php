<?php

namespace Tests\Feature;

use Tests\TestCase;

class PublicRoutesTest extends TestCase
{
    /**
     * Test find-store index route
     */
    public function test_find_store_index_route(): void
    {
        $response = $this->get('/find-store');

        $response->assertStatus(200);
    }

    /**
     * Test find-store show route
     */
    public function test_find_store_show_route(): void
    {
        $response = $this->get('/find-store/1');

        $response->assertStatus(200);
    }

    /**
     * Test public_stores index route
     */
    public function test_public_stores_index_route(): void
    {
        $response = $this->get('/public_stores');

        $response->assertStatus(200);
    }

    /**
     * Test public_stores show route
     */
    public function test_public_stores_show_route(): void
    {
        $response = $this->get('/public_stores/1');

        $response->assertStatus(200);
    }

    /**
     * Test public_stores create route
     */
    public function test_public_stores_create_route(): void
    {
        $response = $this->get('/public_stores/create');

        $response->assertStatus(200);
    }

    /**
     * Test public_stores store route
     */
    public function test_public_stores_store_route(): void
    {
        $response = $this->post('/public_stores', []);

        $response->assertStatus(302);
    }

    /**
     * Test public_stores edit route
     */
    public function test_public_stores_edit_route(): void
    {
        $response = $this->get('/public_stores/1/edit');

        $response->assertStatus(200);
    }

    /**
     * Test public_stores update route
     */
    public function test_public_stores_update_route(): void
    {
        $response = $this->put('/public_stores/1', []);

        $response->assertStatus(302);
    }

    /**
     * Test public_stores destroy route
     */
    public function test_public_stores_destroy_route(): void
    {
        $response = $this->delete('/public_stores/1');

        $response->assertStatus(302);
    }

    /**
     * Test public_items index route
     */
    public function test_public_items_index_route(): void
    {
        $response = $this->get('/public_items');

        $response->assertStatus(200);
    }

    /**
     * Test public_items show route
     */
    public function test_public_items_show_route(): void
    {
        $response = $this->get('/public_items/1');

        $response->assertStatus(200);
    }

    /**
     * Test public_items create route
     */
    public function test_public_items_create_route(): void
    {
        $response = $this->get('/public_items/create');

        $response->assertStatus(200);
    }

    /**
     * Test public_items store route
     */
    public function test_public_items_store_route(): void
    {
        $response = $this->post('/public_items', []);

        $response->assertStatus(302);
    }

    /**
     * Test public_items edit route
     */
    public function test_public_items_edit_route(): void
    {
        $response = $this->get('/public_items/1/edit');

        $response->assertStatus(200);
    }

    /**
     * Test public_items update route
     */
    public function test_public_items_update_route(): void
    {
        $response = $this->put('/public_items/1', []);

        $response->assertStatus(302);
    }

    /**
     * Test public_items destroy route
     */
    public function test_public_items_destroy_route(): void
    {
        $response = $this->delete('/public_items/1');

        $response->assertStatus(302);
    }

    /**
     * Test categories index route
     */
    public function test_categories_index_route(): void
    {
        $response = $this->get('/categories');

        $response->assertStatus(200);
    }

    /**
     * Test categories show route
     */
    public function test_categories_show_route(): void
    {
        $response = $this->get('/categories/1');

        $response->assertStatus(200);
    }

    /**
     * Test categories create route
     */
    public function test_categories_create_route(): void
    {
        $response = $this->get('/categories/create');

        $response->assertStatus(200);
    }

    /**
     * Test categories store route
     */
    public function test_categories_store_route(): void
    {
        $response = $this->post('/categories', []);

        $response->assertStatus(302);
    }

    /**
     * Test categories edit route
     */
    public function test_categories_edit_route(): void
    {
        $response = $this->get('/categories/1/edit');

        $response->assertStatus(200);
    }

    /**
     * Test categories update route
     */
    public function test_categories_update_route(): void
    {
        $response = $this->put('/categories/1', []);

        $response->assertStatus(302);
    }

    /**
     * Test categories destroy route
     */
    public function test_categories_destroy_route(): void
    {
        $response = $this->delete('/categories/1');

        $response->assertStatus(302);
    }

    /**
     * Test interconnected_cities index route
     */
    public function test_interconnected_cities_index_route(): void
    {
        $response = $this->get('/interconnected_cities');

        $response->assertStatus(200);
    }

    /**
     * Test interconnected_cities show route
     */
    public function test_interconnected_cities_show_route(): void
    {
        $response = $this->get('/interconnected_cities/1');

        $response->assertStatus(200);
    }

    /**
     * Test interconnected_cities create route
     */
    public function test_interconnected_cities_create_route(): void
    {
        $response = $this->get('/interconnected_cities/create');

        $response->assertStatus(200);
    }

    /**
     * Test interconnected_cities store route
     */
    public function test_interconnected_cities_store_route(): void
    {
        $response = $this->post('/interconnected_cities', []);

        $response->assertStatus(302);
    }

    /**
     * Test interconnected_cities edit route
     */
    public function test_interconnected_cities_edit_route(): void
    {
        $response = $this->get('/interconnected_cities/1/edit');

        $response->assertStatus(200);
    }

    /**
     * Test interconnected_cities update route
     */
    public function test_interconnected_cities_update_route(): void
    {
        $response = $this->put('/interconnected_cities/1', []);

        $response->assertStatus(302);
    }

    /**
     * Test interconnected_cities destroy route
     */
    public function test_interconnected_cities_destroy_route(): void
    {
        $response = $this->delete('/interconnected_cities/1');

        $response->assertStatus(302);
    }

    /**
     * Test receive_methods index route
     */
    public function test_receive_methods_index_route(): void
    {
        $response = $this->get('/receive_methods');

        $response->assertStatus(200);
    }
}
