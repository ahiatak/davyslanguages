# davyslanguages.com

## Centre de formation en Anglais au Togo


Pour initialiser le projet tapé les commandes suivantes :

    composer intall

Assurez-vous ensuite de créer une nouvelle base de données et d'ajouter vos informations d'identification au fichier .env. Vous devez également ajouter l'URL de votre application dans la variable APP_URL:

    APP_URL=http://localhost:8000
    DB_HOST=localhost
    DB_DATABASE=homestead
    DB_USERNAME=homestead
    DB_PASSWORD=secret

Puis taper la commande suivante : 

    php artisan voyager:install



Créer un nouvel utilisateur administrateur comme suit :

    php artisan voyager:admin your@email.com --create


Pour accéder à la partie administration taper dan le navigateur 

`localhost:8000/admin`



## Présentation de la page d'accueil de Restaurant la savoureuse
![Page d'accueil de DavysLanguages](https://github.com/davahiatak1/hotel-ecole-la-savoureuse/blob/master/davyslanguages-capture-1.jpg)