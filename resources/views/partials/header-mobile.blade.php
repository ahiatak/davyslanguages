<div class="menu_mobile_overlay"></div>
<div class="menu_mobile menu_mobile_fullscreen scheme_dark">
    <div class="menu_mobile_inner">
        <a class="menu_mobile_close icon-cancel"></a>
        <a class="sc_layouts_logo" href="#"><img src="{{voyager::image($davyslanguages->logo1)}}" alt="img" width="156" height="118"></a>
        <nav itemscope itemtype="http://schema.org/SiteNavigationElement" class="menu_mobile_nav_area">
            <ul id="menu_mobile" class=" menu_mobile_nav">
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
                <li id="menu-item-95" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-95">
                    <a href="{{route('services.index')}}"><span>{{ $texts->where('id', 6)->first()->text }}</span></a>
                </li>
                <li id="menu-item-106" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-106">
                    <a href="{{route('learns.index')}}"><span>{{ $texts->where('id', 7)->first()->text }}</span></a>
                </li>
                <li id="menu-item-115" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-115">
                    <a href="{{route('posts.index')}}"><span>{{ $texts->where('id', 8)->first()->text }}</span></a>
                </li>
                <li id="menu-item-88" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-88">
                    <a href="{{route('contacts.index')}}"><span>{{ $texts->where('id', 9)->first()->text }}</span></a>
                </li>
            </ul>
        </nav>
        <div class="search_wrap search_style_normal search_mobile">
            <div class="search_form_wrap">
                {{-- <form role="search" method="get" class="search_form" action="">
                    <input type="text" class="search_field" placeholder="Search" value="" name="s">
                    <button type="submit" class="search_submit trx_addons_icon-search"></button>
                </form> --}}
            </div>
        </div>
        <div class="socials_mobile"><a target="_blank" href="{{$davyslanguages->facebook}}" class="social_item social_item_style_icons social_item_type_icons"><span
                    class="social_icon social_facebook"><span class="icon-facebook"></span></span></a>
            <a target="_blank" href="{{$davyslanguages->instagram}}" class="social_item social_item_style_icons social_item_type_icons"><span class="social_icon social_instagramm"><span class="icon-instagramm"></span></span>
            </a><a target="_blank" href="{{$davyslanguages->twitter}}" class="social_item social_item_style_icons social_item_type_icons"><span
                    class="social_icon social_twitter"><span class="icon-twitter"></span></span></a></div>
    </div>
</div>