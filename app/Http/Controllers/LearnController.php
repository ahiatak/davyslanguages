<?php

namespace App\Http\Controllers;

use App\Learn;
use Illuminate\Http\Request;

class LearnController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('learns.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Learn  $learn
     * @return \Illuminate\Http\Response
     */
    public function show(Learn $learn)
    {
        return view('learns.show', [
            'learn' => $learn
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Learn  $learn
     * @return \Illuminate\Http\Response
     */
    public function edit(Learn $learn)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Learn  $learn
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Learn $learn)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Learn  $learn
     * @return \Illuminate\Http\Response
     */
    public function destroy(Learn $learn)
    {
        //
    }
}
