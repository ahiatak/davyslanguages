<header class="top_panel top_panel_custom top_panel_custom_938 top_panel_custom_header-home-1 without_bg_image scheme_default">
    <div class="vc_row wpb_row vc_row-fluid extra_spaces vc_custom_1508776062736 vc_row-o-content-middle vc_row-flex sc_layouts_row sc_layouts_row_type_compact sc_layouts_row_fixed sc_layouts_row_fixed_always">
        <div class="wpb_column vc_column_container vc_col-sm-3 vc_col-lg-3 vc_col-md-3 vc_col-xs-6 sc_layouts_column_icons_position_left">
            <div class="vc_column-inner">
                <div class="wpb_wrapper">
                    <div class="sc_layouts_item">
                        <a href="{{route('home')}}" id="sc_layouts_logo_987115137" class="sc_layouts_logo sc_layouts_logo_default"><img class="logo_image" src="{{voyager::image($davyslanguages->logo1)}}" alt="" width="218" height="70"></a>
                        <!-- /.sc_layouts_logo -->
                    </div>
                </div>
            </div>
        </div>
        <div class="wpb_column vc_column_container vc_col-sm-9 vc_col-lg-9 vc_col-md-9 vc_col-xs-6 sc_layouts_column sc_layouts_column_align_right sc_layouts_column_icons_position_left">
            <div class="vc_column-inner">
                <div class="wpb_wrapper">
                    <div class="sc_layouts_item">
                        <nav class="sc_layouts_menu sc_layouts_menu_default menu_hover_fade hide_on_mobile" id="sc_layouts_menu_1716610398" data-animation-in="fadeInUpSmall" data-animation-out="fadeOutDownSmall">
                            <ul id="menu-main-menu" class="sc_layouts_menu_nav">
                                <li id="menu-item-104" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor current-menu-parent menu-item-has-children menu-item-104">
                                    <a href="{{route('home')}}"><span>{{ $texts->where('id', 1)->first()->text }}</span></a>
                                </li>
                                <li id="menu-item-105" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-105">
                                    <a href="{{route('abouts.index')}}"><span>{{ $texts->where('id', 2)->first()->text }}</span></a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-78" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-78">
                                            <a href="{{route('abouts.index')}}"><span>{{ $texts->where('id', 3)->first()->text }}</span></a></li>
                                        <li id="menu-item-79" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-79">
                                            <a href="{{route('teams.index')}}"><span>{{ $texts->where('id', 4)->first()->text }}</span></a></li>
                                        {{-- <li id="menu-item-80" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-80">
                                            <a href="{{route('galleries.index')}}"><span>{{ $texts->where('id', 5)->first()->text }}</span></a></li> --}}
                                    </ul>
                                </li>
                                <li id="menu-item-88" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-88">
                                    <a href="{{route('contacts.index')}}"><span>{{ $texts->where('id', 9)->first()->text }}</span></a>
                                </li>
                                <li id="menu-item-95" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-95">
                                    <a href="{{route('services.index')}}"><span>{{ $texts->where('id', 6)->first()->text }}</span></a>
                                </li>
                                <li id="menu-item-106" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-106">
                                    <a href="{{route('learns.index')}}"><span>{{ $texts->where('id', 7)->first()->text }}</span></a>
                                </li>
                                <li id="menu-item-115" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-115">
                                    <a href="{{route('posts.index')}}"><span>{{ $texts->where('id', 8)->first()->text }}</span></a>
                                </li>
                            </ul>
                        </nav>
                        <!-- /.sc_layouts_menu -->
                        <div class="sc_layouts_iconed_text sc_layouts_menu_mobile_button">
                            <a class="sc_layouts_item_link sc_layouts_iconed_text_link" href="#">
                                <span class="sc_layouts_item_icon sc_layouts_iconed_text_icon trx_addons_icon-menu"></span>
                            </a>
                        </div>
                    </div>
                    <!-- <div class="sc_layouts_item sc_layouts_hide_on_mobile">
                        <div id="sc_layouts_search_1109443900" class="sc_layouts_search hide_on_mobile">
                            <div class="search_wrap search_style_fullscreen layouts_search">
                                <div class="search_form_wrap">
                                    <form role="search" method="get" class="search_form" action="http://prolingua.themerex.net/">
                                        <input type="text" class="search_field" placeholder="Search" value="" name="s">
                                        <button type="submit" class="search_submit trx_addons_icon-search"></button>
                                        <a class="search_close trx_addons_icon-delete"></a>
                                    </form>
                                </div>
                            </div>
                        </div>
                        /.sc_layouts_search
                    </div> -->
                    <div class="sc_layouts_item sc_layouts_hide_on_mobile sc_layouts_hide_on_tablet"><a href="{{route('order-translations.index')}}" style="background-color: #660066;" id="sc_button_1946587946" class="sc_button hide_on_mobile hide_on_tablet color_style_default sc_button_default sc_button_size_normal sc_button_with_icon sc_button_icon_left"><span
                                class="sc_button_icon"><span class="icon-edit-1"></span></span><span
                                class="sc_button_text"><span class="sc_button_title">{{ $texts->where('id', 10)->first()->text }}</span></span><!-- /.sc_button_text --></a>
                        <!-- /.sc_button -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    @yield('banner')
</header>