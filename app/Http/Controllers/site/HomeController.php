<?php

namespace App\Http\Controllers\site;

use App\Http\Controllers\Controller;
use App\Models\Cms;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        return view('welcome');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Cms $cms)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Cms $cms)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Cms $cms)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Cms $cms)
    {
        //
    }
}
