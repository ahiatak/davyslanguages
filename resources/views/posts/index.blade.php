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

        .vc_custom_1507724891088 {
            background-image: url(wp-content/uploads/2017/10/main_header_bg.jpg);
            background-position: top left !important;
            background-repeat: no-repeat !important;
            background-size: cover !important;
        }

        .vc_custom_1507730445537 {
            background-image: url(wp-content/uploads/2017/10/bg.jpg);
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
            max-height: 70px;
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
            background-image: url({{asset('wp-content/uploads/2017/10/bg.jpg')}});
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

    @php $title = "Formations et conseils | Bien parler Anglais | Davys'Languages - Togo"  @endphp

    <div class="posts_container">
        @foreach($posts as $post)
            <article id="post-{{$loop->iteration}}" class="post_item post_format_standard post_layout_classic post_layout_classic_3 post-{{$loop->iteration}} post type-post status-publish format-standard has-post-thumbnail hentry category-interesting-to-know category-language-skills category-research tag-research tag-skills">
                <div class="post_featured with_thumb hover_icon"><img width="842" height="472" src="{{Voyager::image($post->thumbnail('cropped', 'image'))}}" class="attachment-prolingua-thumb-big size-prolingua-thumb-big wp-post-image" alt="{{ $post->getTranslatedAttribute('title', $langue, 'fr') }} "
                        srcset="{{Voyager::image($post->thumbnail('cropped', 'image'))}} 842w, {{Voyager::image($post->thumbnail('cropped-370', 'image'))}} 370w, {{Voyager::image($post->thumbnail('cropped-270', 'image'))}} 270w"
                        sizes="(max-width: 842px) 100vw, 842px" />
                    <div class="mask"></div>
                    <div class="icons">
                        <a href="{{route('posts.show', $post)}}" aria-hidden="true" class="icon-add"></a>
                    </div>
                </div>
                <div class="post_wrapper">
                    <div class="post_header entry-header">
                        <h4 class="post_title entry-title"><a href="{{route('posts.show', $post)}}" rel="bookmark">{{ $post->getTranslatedAttribute('title', $langue, 'fr') }} </a></h4>
                    </div>
                    <!-- .entry-header -->

                    <div class="post_content entry-content">
                        <div class="post_content_inner">
                            <p>{!! Str::limit(strip_tags($post->getTranslatedAttribute('description', $langue, 'fr')), 450) !!}</p>
                        </div>
                    </div>

                    <div class="post_info_top">
                        <br>
                        <div class="post_categories"><a href="{{route('posts.show', $post)}}" title="View all posts in Interesting to know">{{ $texts->where('id', 48)->first()->text }}</a> </div>
                    </div>
                </div>
            </article>
        @endforeach
    </div>
    {{ $posts->links() }}

@endsection


@section('sidebar')

<div class="sidebar left widget_area scheme_dark" role="complementary">
    <div class="sidebar_inner">
        <aside id="trx_addons_widget_contacts-2" class="widget widget_contacts">
            <h5 class="widget_title">Contacts</h5>
            <div class="contacts_wrap">
                <div class="contacts_description">
                    {!! Str::limit($about->getTranslatedAttribute('description', $langue, 'fr'), 150) !!}
                </div>
                <div class="contacts_info"><span class="address_block"><span class="address_label">{{ $texts->where('id', 55)->first()->text }}</span><span
                            class="contacts_address">{{$davyslanguages->about1}}</span></span><span
                        class="email_block"><span class="email_label">Email</span>
                        <span class="contacts_email"><a
                                href="mailto:{{$davyslanguages->mail1}}">{{$davyslanguages->mail1}}</a></span>
                    </span>
                    <span class="phone_block"><span class="phone_label">{{ $texts->where('id', 28)->first()->text }}</span><a href="tel:{{$davyslanguages->tel1}}"
                            class="contacts_phone">{{$davyslanguages->tel1}}</a></span>
                </div>
            </div>
            <!-- /.contacts_wrap -->
        </aside>
    </div>
</div>

@endsection