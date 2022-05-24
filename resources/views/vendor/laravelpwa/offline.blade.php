@extends('layouts.app')

@section('content')

    <h1>You are currently not connected to any networks.</h1>

    @includeIf('abouts.overview')
    @includeIf('services.overview')
    @includeIf('sections.overview')
    @includeIf('prices.overview')
    @includeIf('faqs.overview')
    @includeIf('translates.overview')

@endsection