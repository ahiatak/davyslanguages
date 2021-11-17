<style>
    .vc_row[data-vc-full-width].vc_hidden {
        opacity: 1;
    }
</style>

<footer class="footer_wrap footer_custom footer_custom_622 footer_custom_392 footer_custom_footer-for-contact-form scheme_darksome">
    <div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1507730445537 vc_row-has-fill">
        <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
            <div class="vc_column-inner">
                <div class="wpb_wrapper">
                    @if(
                        url()->current() == route('abouts.index') ||
                        url()->current() == route('teams.index') ||
                        url()->current() == route('learns.index') ||
                         ( (isset($learn)? url()->current() == route('learns.show', $learn) : ''))  ||
                        url()->current() == route('posts.index')||

                         ( (isset($post)? url()->current() == route('posts.show', $post) : ''))  ||
                        url()->current() == route('order-translations.index')
                        )

                        <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div>
                        
                    @else
                        <div class="vc_empty_space" style="height: 27em"><span class="vc_empty_space_inner"></span></div>
                        
                    @endif

                    <div class="vc_row wpb_row vc_inner vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12 vc_hidden-lg vc_hidden-md sc_layouts_column_icons_position_left">
                            <div class="vc_column-inner">
                                <div class="wpb_wrapper">
                                    <div class="vc_empty_space hide_on_mobile" style="height: 15.5em"><span class="vc_empty_space_inner"></span></div>
                                    <div class="vc_empty_space  hide_on_mobile" style="height: 9em"><span class="vc_empty_space_inner"></span></div>
                                    <div class="vc_empty_space  hide_on_desktop" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_row wpb_row vc_inner vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                            <div class="vc_column-inner">
                                <div class="wpb_wrapper">
                                    <div class="sc_layouts_item">
                                        <div class="vc_empty_space  hide_on_desktop hide_on_notebook hide_on_tablet" style="height: 12em"><span class="vc_empty_space_inner"></span></div>
                                        <div id="sc_title_1035559549" class="sc_title color_style_default sc_title_default">
                                            <h4 class="sc_item_title sc_title_title sc_align_center sc_item_title_style_default sc_item_title_tag">
                                                {{ $texts->where('id', 38)->first()->text }}</h4>
                                        </div>
                                        <!-- /.sc_title -->
                                    </div>
                                    <div class="vc_empty_space" style="height: 2.4em"><span class="vc_empty_space_inner"></span></div>

                                    <div class="wpb_text_column wpb_content_element ">
                                        <div class="wpb_wrapper">
                                            <p style="text-align: center;">{{ $texts->where('id', 39)->first()->text }}<br /> {{ $texts->where('id', 40)->first()->text }}
                                            </p>

                                        </div>
                                    </div>
                                    <div class="vc_empty_space" style="height: 2.1em"><span class="vc_empty_space_inner"></span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_row wpb_row vc_inner vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                            <div class="vc_column-inner">
                                <div class="wpb_wrapper">
                                    <div id="sc_content_1214071023" class="sc_content color_style_default sc_content_default sc_content_width_1_1 sc_float_center sc_align_center">
                                        <div class="sc_content_container">
                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    

                                                    <form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-394" method="get" data-id="394" data-name="Main Mailchimp" action="{{ route('contacts.index') }}">
                                                        <div class="mc4wp-form-fields"><input style="color: #ffffff !important" type="email" name="EMAIL" placeholder="{{ $texts->where('id', 41)->first()->text }}" required /><input type="submit" value="{{ $texts->where('id', 42)->first()->text }}" />

                                                    </form>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.sc_content -->
                                    <div class="vc_empty_space" style="height: 1.6em"><span class="vc_empty_space_inner"></span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_row wpb_row vc_inner vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                            <div class="vc_column-inner">
                                <div class="wpb_wrapper">
                                    <div class="sc_layouts_item">
                                        <div id="widget_socials_2089938016" class="widget_area sc_widget_socials vc_widget_socials wpb_content_element">
                                            <aside id="widget_socials_2089938016_widget" class="widget widget_socials">
                                                <div class="socials_wrap sc_align_center"><a target="_blank" href="{{$davyslanguages->facebook}}" class="social_item social_item_style_icons social_item_type_icons"><span
                                                            class="social_icon social_facebook"><span
                                                                class="icon-facebook"></span></span></a>
                                                    <a target="_blank" href="{{$davyslanguages->instagram}}" class="social_item social_item_style_icons social_item_type_icons"><span
                                                            class="social_icon social_instagramm"><span
                                                                class="icon-instagramm"></span></span>
                                                    </a>
                                                    <a target="_blank" href="{{$davyslanguages->twitter}}" class="social_item social_item_style_icons social_item_type_icons"><span class="social_icon social_twitter"><span
                                                                class="icon-twitter"></span></span>
                                                    </a>
                                                </div>
                                            </aside>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_row wpb_row vc_inner vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                            <div class="vc_column-inner">
                                <div class="wpb_wrapper">
                                    <div class="vc_empty_space" style="height: 1em"><span class="vc_empty_space_inner"></span></div>
                                    {{-- <div class="vc_empty_space  hide_on_mobile" style="height: 2.6em"><span class="vc_empty_space_inner"></span></div> --}}
                                    <div id="sc_content_923331626" class="sc_content color_style_default sc_content_default sc_content_width_1_1 sc_float_center">
                                        <div class="sc_content_container">
                                            <div class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text vc_sep_color_grey vc_custom_1507024074354  vc_custom_1507024074354">
                                                <span class="vc_sep_holder vc_sep_holder_l"><span
                                                        class="vc_sep_line"></span></span><span class="vc_sep_holder vc_sep_holder_r"><span
                                                        class="vc_sep_line"></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.sc_content -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="vc_row wpb_row vc_inner vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
                            <div class="vc_column-inner">
                                <div class="wpb_wrapper">
                                    <div class="vc_empty_space" style="height: 2.1em"><span class="vc_empty_space_inner"></span></div>

                                    <div class="wpb_text_column wpb_content_element ">
                                        <div class="wpb_wrapper">
                                            <p style="text-align: center;"><a href="#"  rel="noopener noreferrer">Copyright Davys'Languages</a> © {{ date('Y') }} Design by Elom Zounon & Ahiataku David</p>

                                        </div>
                                    </div>
                                    <div class="vc_empty_space" style="height: 2.1em"><span class="vc_empty_space_inner"></span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="vc_row-full-width vc_clearfix"></div>
</footer>