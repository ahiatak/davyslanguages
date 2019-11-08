@extends('layouts.app')

@section('content')

<article id="post-2" class="post_item_single post_type_page post-2 page type-page status-publish hentry">


    <div class="post_content entry-content">

        @includeIf('partials.banner')

        @includeIf('abouts.overview')
        
        @includeIf('services.overview')

        @includeIf('sections.pub-image')

        @includeIf('sections.cours')

        @includeIf('faqs.overview')

        @includeIf('translates.create2')
        
    </div>

</article>



@endsection