@php
    $videoImage = $images->where('id', 3)->first();
@endphp

<article id="post-40" class="post_item_single post_type_page post-40 page type-page status-publish hentry">


    <div class="post_content entry-content">
        <div class="vc_row wpb_row vc_row-fluid">
            <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-6 vc_col-md-6 vc_col-xs-12 sc_layouts_column_icons_position_left">
                <div class="vc_column-inner">
                    <div class="wpb_wrapper">
                        <div id="sc_title_1527817562" class="sc_title color_style_default sc_title_default">
                            <br><h3 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default sc_item_title_tag">{{ $texts->where('id', 75)->first()->text }}</h3>
                        </div>
                        <!-- /.sc_title -->
                        <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                        <div class="vc_empty_space  hide_on_mobile" style="height: 1em"><span class="vc_empty_space_inner"></span></div>
                        <div id="widget_video_1890919835" class="widget_area sc_widget_video vc_widget_video wpb_content_element">
                            <aside id="widget_video_1890919835_widget" class="widget widget_video">
                                <div id="sc_video_1369300323" class="trx_addons_video_player with_cover hover_play"><img src="{{Voyager::image($videoImage->url)}}" style="width:484px; height:273px" alt="" alt="">
                                    <div class="video_mask"></div>
                                    <div class="video_hover inited" data-video="&lt;iframe src=&quot;{{ $texts->where('id', 76)->first()->text }}?color=ffffff&amp;portrait=0&amp;autoplay=1&quot; width=&quot;640&quot; height=&quot;360&quot; frameborder=&quot;0&quot; webkitallowfullscreen mozallowfullscreen allowfullscreen&gt;&lt;/iframe&gt;"></div>
                                    <div class="video_embed video_frame"></div>
                                </div>
                            </aside>
                        </div>
                        <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div>
                    </div>
                </div>
            </div>
            <div class="wpb_column vc_column_container vc_col-sm-12 vc_col-lg-6 vc_col-md-6 vc_col-xs-12 sc_layouts_column_icons_position_left">
                <div class="vc_column-inner">
                    <div class="wpb_wrapper">
                        <div id="sc_title_25091850" class="sc_title color_style_default sc_title_default">
                            <br><h3 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default sc_item_title_tag">{{ $texts->where('id', 74)->first()->text }}</h3>
                        </div>
                        <!-- /.sc_title -->
                        <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                        <div class="vc_empty_space  hide_on_mobile" style="height: 1em"><span class="vc_empty_space_inner"></span></div>
                        <div id="widget_slider_435495196" class="widget_area sc_widget_slider vc_widget_slider wpb_content_element">
                            <aside id="widget_slider_435495196_widget" class="widget widget_slider">
                                <div class="slider_wrap slider_engine_swiper">
                                    <div id="widget_slider_435495196_outer" class="slider_outer slider_swiper_outer slider_style_default slider_outer_direction_horizontal slider_outer_one slider_outer_nopagination slider_outer_controls slider_outer_controls_side slider_outer_titles_center">
                                        <div id="widget_slider_435495196_swiper" class="slider_container slider_swiper swiper-slider-container slider_controls slider_controls_side slider_titles_center slider_resize slider_height_auto slider_direction_horizontal slider_nopagination slider_one slider_type_bg"
                                            data-interval="7000" data-effect="slide" data-pagination="bullets" data-direction="horizontal" data-slides-per-view="1" data-slides-space="0">
                                            <div class="slider-wrapper swiper-wrapper">
                                                @foreach($galleries as $gallerie)
                                                    <div class="slider-slide swiper-slide" data-image="{{Voyager::image($gallerie->image)}}" style="background-image:url('{{Voyager::image($gallerie->image)}}');"></div>
                                                @endforeach
                                            </div>
                                            <!-- /.slider-wrapper -->
                                            <div class="slider_controls_wrap">
                                                <a class="slider_prev swiper-button-prev" href="#"></a>
                                                <a class="slider_next swiper-button-next" href="#"></a>
                                            </div>
                                        </div>
                                        <!-- /.slider_container -->
                                    </div>
                                    <!-- /.slider_outer -->
                                </div>
                            </aside>
                        </div>
                        <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                        <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- .entry-content -->


</article>
