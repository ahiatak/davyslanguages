@extends('layouts.app')

@section('banner')
    @includeIf('learns.banner')
@endsection

@push('css')

    <noscript>
        <style type="text/css"> 
            .wpb_animate_when_almost_visible { opacity: 1; }
        </style>
    </noscript>
    
    <style type="text/css" id="trx_addons-inline-styles-inline-css">
        .vc_custom_1506954838499 {
            padding-left: 1.5em !important;
        }
        
        .vc_custom_1507724891088 {
            background-image: url(wp-content/uploads/2017/10/main_header_bg.jpg?id=601);
            background-position: top left !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }
        
        .vc_custom_1507730445537 {
            background-image: url(wp-content/uploads/2017/10/bg.jpg?id=620) !important;
            background-position: center !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }
        
        .vc_custom_1507024074354 {
            margin-top: 0px !important;
            margin-bottom: 0px !important;
        }
        
        .sc_layouts_row .custom-logo-link img,
        .custom-logo-link img,
        .sc_layouts_row .sc_layouts_logo img,
        .sc_layouts_logo img {
            max-height: 70px
        }
    </style>

    <style>
        .top_panel {
            position: relative;
            z-index: 8000;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            padding: 0.1px 0;
            margin-bottom: 4rem;
        }

        .footer_wrap {
            margin-top: 5rem;
        }
    </style>

    <style>
        .scheme_darksome.footer_wrap, .footer_wrap .scheme_darksome.vc_row {
            background-color: #660066;
            background-image: url({{asset('wp-content/uploads/2017/10/bg.jpg?id=620')}});
            color: #a2afcb;
        }

        .scheme_darksome.footer_wrap, .footer_wrap .scheme_darksome.vc_row {
            
            background-color: #660066;
             /* background-image: url(); */
            color: #f7f7f7;

        }
    </style>

@endpush

@section('content')

    @php $title = "Cours d'anglais au Togo"  @endphp

    <div class="posts_container columns_wrap columns_padding_bottom">
        
        @foreach($learns as $learn)
            <div class="column-1_3">
                <article id="post-{{$loop->iteration}}" class="post_item post_format_standard post_layout_classic post_layout_classic_3 post-{{$loop->iteration}} post type-post status-publish format-standard has-post-thumbnail hentry category-interesting-to-know category-language-skills category-research tag-research tag-skills">
                    <div class="post_featured with_thumb hover_icon"><img width="842" height="472" src="{{Voyager::image($learn->thumbnail('cropped', 'image'))}}" class="attachment-prolingua-thumb-big size-prolingua-thumb-big wp-post-image" alt="{{ $learn->getTranslatedAttribute('title', $langue, 'fr') }}"
                            srcset="{{Voyager::image($learn->thumbnail('cropped', 'image'))}} 842w, {{Voyager::image($learn->thumbnail('cropped-370', 'image'))}} 370w, {{Voyager::image($learn->thumbnail('cropped-270', 'image'))}} 270w"
                            sizes="(max-width: 842px) 100vw, 842px" />
                        <div class="mask"></div>
                        <div class="icons">
                            <a href="{{route('learns.show', $learn)}}" aria-hidden="true" class="icon-add"></a>
                        </div>
                    </div>
                    <div class="post_wrapper">
                        <div class="post_header entry-header">
                            <h4 class="post_title entry-title"><a href="{{route('learns.show', $learn)}}" rel="bookmark">{{ $learn->getTranslatedAttribute('title', $langue, 'fr') }} </a></h4>
                        </div>
                        <!-- .entry-header -->

                        <div class="post_content entry-content">
                            <div class="post_content_inner">
                                <p>{!! Str::limit(strip_tags($learn->getTranslatedAttribute('description', $langue, 'fr')), 450) !!}</p>
                            </div>
                        </div>

                        <div class="post_info_top">
                            <br>
                            <div class="post_categories"><a href="{{route('learns.show', $learn)}}" title="View all posts in Interesting to know">{{ $texts->where('id', 48)->first()->text }}</a> </div>
                        </div>
                    </div>
                </article>
            </div>
        @endforeach

    </div>

    {{ $learns->links() }}

@endsection