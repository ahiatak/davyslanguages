@php
    $image = $images->where('id', 1)->first();
@endphp

<div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1502717415690 vc_row-has-fill" style="padding-left: 20px !important; padding-right: 20px !important">
    <div class="wpb_column vc_column_container vc_col-sm-4 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <br><br>
                @php
                    $pub = $images->where('id', 4)->first();
                @endphp

                <img src="{{Voyager::image($pub->url)}}" style="width: 100%" alt="">
            </div>
        </div>
    </div>

    <div class="wpb_column vc_column_container vc_col-sm-4 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                {{-- <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div> --}}
                {{-- <div class="vc_empty_space  hide_on_mobile" style="height: 4em"><span class="vc_empty_space_inner"></span></div> --}}
                <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                <div id="sc_title_1708140531" class="sc_title color_style_default sc_title_default">
                    <h2 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default sc_item_title_tag">
                         {{ $texts->where('id', 22)->first()->text }}</h2>
                </div>
                <!-- /.sc_title -->
                {{-- <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div> --}}
                <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                @foreach($howItWorks as $howItWork)
                    <div class="vc_toggle vc_toggle_rounded vc_toggle_color_default  vc_toggle_size_md {{-- @if($loop->iteration==1) vc_toggle_active @endif --}}">
                        <div class="vc_toggle_title">
                            <h4>{{ $howItWork->getTranslatedAttribute('title', $langue, 'fr') }}</h4><i class="vc_toggle_icon"></i>
                        </div>
                        <div class="vc_toggle_content">
                            <p>{!! $howItWork->getTranslatedAttribute('description', $langue, 'fr') !!}</p>
                        </div>
                    </div>
                @endforeach

                <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                {{-- <a href="{{route('contacts.index')}}" id="sc_button_624428933" class="sc_button color_style_dark sc_button_default sc_button_size_normal sc_button_icon_left"><span
                        class="sc_button_text"><span class="sc_button_title">{{ $texts->where('id', 24)->first()->text }}</span></span></a> --}}
                
                {{-- <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div> --}}
            </div>
        </div>
    </div>
    
    <div class="wpb_column vc_column_container vc_col-sm-4 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                {{-- <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div> --}}
                {{-- <div class="vc_empty_space  hide_on_mobile" style="height: 4em"><span class="vc_empty_space_inner"></span></div> --}}
                <div class="vc_empty_space  hide_on_tablet hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                <div id="sc_title_1708140531" class="sc_title color_style_default sc_title_default">
                    <h2 class="sc_item_title sc_title_title sc_align_left sc_item_title_style_default sc_item_title_tag">
                         {{ $texts->where('id', 23)->first()->text }}</h2>
                </div>
                <!-- /.sc_title -->
                <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                {{-- <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div> --}}
                @foreach($faqs as $faq)
                    <div class="vc_toggle vc_toggle_rounded vc_toggle_color_default  vc_toggle_size_md {{-- @if($loop->iteration==1) vc_toggle_active @endif --}}">
                        <div class="vc_toggle_title">
                            <h4>{{ $faq->getTranslatedAttribute('title', $langue, 'fr') }}</h4><i class="vc_toggle_icon"></i>
                        </div>
                        <div class="vc_toggle_content">
                            <p>{!! $faq->getTranslatedAttribute('description', $langue, 'fr') !!}</p>
                        </div>
                    </div>
                @endforeach

                <div class="vc_empty_space" style="height: 2em"><span class="vc_empty_space_inner"></span></div>
                {{-- <a href="{{route('contacts.index')}}" id="sc_button_624428933" class="sc_button color_style_dark sc_button_default sc_button_size_normal sc_button_icon_left"><span
                        class="sc_button_text"><span class="sc_button_title">{{ $texts->where('id', 24)->first()->text }}</span></span></a> --}}
                <!-- /.sc_button -->
                {{-- <div class="vc_empty_space" style="height: 4em"><span class="vc_empty_space_inner"></span></div> --}}
            </div>
        </div>
    </div>
</div>
<div class="vc_row-full-width vc_clearfix"></div>

<div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1508491654985 vc_row-has-fill">
    <div class="wpb_column vc_column_container vc_col-sm-12 sc_layouts_column_icons_position_left">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <div class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text vc_custom_1508510305737  vc_custom_1508510305737">
                    <span class="vc_sep_holder vc_sep_holder_l"><span
                            style="border-color:#d5d9e2;"
                            class="vc_sep_line"></span></span><span class="vc_sep_holder vc_sep_holder_r"><span
                            style="border-color:#d5d9e2;"
                            class="vc_sep_line"></span></span>
                </div>
                <div class="vc_empty_space" style="height: 24em"><span class="vc_empty_space_inner"></span></div>
                {{-- <div class="vc_empty_space  hide_on_mobile" style="height: 2em"><span class="vc_empty_space_inner"></span></div> --}}
            </div>
        </div>
    </div>
</div>
<div class="vc_row-full-width vc_clearfix"></div>