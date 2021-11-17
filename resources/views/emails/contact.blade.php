@component('mail::message')
# {{$name}} a besoin de votre service

## Message : {{$message}} 

## E-mail du client :  {{$email}}

## Numero du client : {{$phone}}



@component('mail::button', ['url' => 'http://davyslanguages.com/admin'])
Accéder au site
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
