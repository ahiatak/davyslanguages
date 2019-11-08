@php
    $pub = $images->where('id', 4)->first();
@endphp

<img src="{{Voyager::image($pub->url)}}" style="height: 450px" alt="">