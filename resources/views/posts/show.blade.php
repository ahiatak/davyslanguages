@extends('layouts.app')

@section('banner')
    @includeIf('posts.banner')
@endsection

@push('css')

    <noscript>
        <style type="text/css">
            .wpb_animate_when_almost_visible {
                opacity: 1;
            }
        </style>
    </noscript>
    <style type="text/css" id="trx_addons-inline-styles-inline-css">
        .vc_custom_1506954838499 {
            padding-left: 1.5em !important;
        }

        .vc_custom_1507557076137 {
            background-image: url(wp-content/uploads/2017/10/blog-single_header.jpg?id=558);
            background-position: top left !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1507730445537 {
            background-image: url(wp-content/uploads/2017/10/bg.jpg?id=620);
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

    @php $title = $post->getTranslatedAttribute('title', $langue, 'fr') @endphp

    <br><br>
    <article id="post-185" class="post_item_single post_type_post post_format_ post-185 post type-post status-publish format-standard has-post-thumbnail hentry category-interesting-to-know category-language-skills category-research tag-research tag-skills">
        <div class="post_featured">
            <img width="2400" height="1600" src="{{Voyager::image($post->thumbnail('cropped-2400', 'image'))}}" class="attachment-prolingua-thumb-full size-prolingua-thumb-full wp-post-image" alt="{{ $post->getTranslatedAttribute('title', $langue, 'fr') }}"
                itemprop="url" srcset="{{Voyager::image($post->thumbnail('cropped-2400', 'image'))}} 2400w, {{Voyager::image($post->thumbnail('cropped-300', 'image'))}} 300w, {{Voyager::image($post->thumbnail('cropped-768', 'image'))}} 768w, {{Voyager::image($post->thumbnail('cropped-1024', 'image'))}} 1024w, {{Voyager::image($post->thumbnail('cropped-370', 'image'))}} 370w, {{Voyager::image($post->thumbnail('cropped-760', 'image'))}} 760w"
                sizes="(max-width: 2400px) 100vw, 2400px" /> </div>
        <!-- .post_featured -->
        <div class="post_content entry-content" itemprop="mainEntityOfPage">

            <h2 class="sc_item_title sc_title_title sc_align_center sc_item_title_style_default sc_item_title_tag" >
                {{ $post->getTranslatedAttribute('title', $langue, 'fr') }} 
            </h2>
            <br>
            
            {!! $post->getTranslatedAttribute('description', $langue, 'fr') !!}
            
            <div style="text-align: center;">
                <br>
                <a href="tel:{{$davyslanguages->tel1}}" id="sc_button_2143448993" class="sc_button color_style_default sc_button_default sc_button_size_normal sc_button_icon_left">
                    <span class="sc_button_text">
                        <span class="sc_button_title">
                            {{ $texts->where('id', 56)->first()->text }}
                        </span>
                    </span>                        
                </a>
            </div>
            
            
            <div class="post_meta post_meta_single"><span class="post_meta_item post_tags"><a
                        href="{{route('posts.index')}}" rel="tag">DAVYS'LANGUAGES</a></span><span class="post_meta_item post_share">
                    <div
                        class="socials_share socials_size_tiny socials_type_block socials_dir_horizontal socials_wrap">
                        <span class="social_items">
                            <a
                                href="https://twitter.com/intent/tweet?text={{ $post->getTranslatedAttribute('title', $langue, 'fr') }}&#038;url=http%3A%2F%2Fdavyslanguages.com%2F2017%2F08%2F12%2F{{$langue}}%2Fposts%2F{{$post->id}}%2F"
                                class="social_item social_item_popup"
                                data-link="https://twitter.com/intent/tweet?text={{ $post->getTranslatedAttribute('title', $langue, 'fr') }}&#038;url=http%3A%2F%2Fdavyslanguages.com%2F2017%2F08%2F12%2F{{$langue}}%2Fposts%2F{{$post->id}}%2F"
                                data-count="trx_addons_twitter"><span
                                    class="social_icon social_trx_addons_twitter"><span
                                        class="trx_addons_icon-twitter"></span></span>
                            </a><a href="http://www.facebook.com/sharer.php?u=http%3A%2F%2Fdavyslanguages.com%2F2017%2F08%2F12%2F{{$langue}}%2Fposts%2F{{$post->id}}%2F" class="social_item social_item_popup" data-link="http://www.facebook.com/sharer.php?u=http%3A%2F%2Fdavyslanguages.com%2F2017%2F08%2F12%2F{{$langue}}%2Fposts%2F{{$post->id}}%2F"
                                data-count="trx_addons_facebook"><span
                                    class="social_icon social_trx_addons_facebook"><span
                                        class="trx_addons_icon-facebook"></span></span></a></span>
                    </div>
            </span>
        </div>
        </div>
    </article>
@endsection