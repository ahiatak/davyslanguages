var staticCacheName = "pwa-v" + new Date().getTime();
var filesToCache = [
    '/offline',
    '/wp-content/plugins/vc-extensions-bundle/css/admin_icon.css',
    '/wp-includes/css/dist/block-library/style.min.css',
    '/wp-content/plugins/contact-form-7/includes/css/styles.css',
    '/wp-content/plugins/essential-grid/public/assets/css/settings.css',
    '/wp-content/plugins/essential-grid/public/assets/font/fontello/css/fontello.css',
    '/wp-content/plugins/revslider/public/assets/css/settings.css',
    '/wp-content/plugins/trx_addons/css/font-icons/css/trx_addons_icons-embedded.min.css',
    '/wp-content/plugins/trx_addons/js/swiper/swiper.min.css',
    '/wp-content/plugins/trx_addons/js/magnific/magnific-popup.min.css',
    '/wp-content/plugins/trx_addons/css/trx_addons.css',
    '/wp-content/plugins/trx_addons/css/trx_addons.animation.min.css',
    '/wp-content/plugins/trx_demo/css/font-icons/css/trx_demo_icons.css',
    '/wp-content/plugins/trx_demo/css/font-icons/css/animation.css',
    '/wp-content/plugins/trx_demo/css/trx_demo_panels.css',
    '/wp-content/plugins/js_composer/assets/css/js_composer.min.css',
    '/wp-content/plugins/wp-gdpr-compliance/assets/css/front.css',
    '/wp-content/themes/prolingua/css/font-face/Montserrat/stylesheet.css',
    '/wp-content/themes/prolingua/css/font-icons/css/fontello-embedded.css',
    '/wp-content/themes/prolingua/style.css',
    '/wp-content/themes/prolingua/css/__styles.css',
    '/wp-content/themes/prolingua/css/__colors.css',
    '/wp-includes/js/mediaelement/mediaelementplayer-legacy.min.css',
    '/wp-includes/js/mediaelement/wp-mediaelement.min.css',
    '/wp-content/themes/prolingua/css/responsive.css',
    '/wp-content/plugins/vc-extensions-bundle/hotspot/css/style.min.css',
    '/wp-content/plugins/vc-extensions-bundle/hotspot/../profilecard/css/tooltipster.css',
    '/wp-includes/js/jquery/jquery.js',
    '/wp-includes/js/jquery/jquery-migrate.min.js',
    '/wp-content/plugins/essential-grid/public/assets/js/jquery.esgbox.min.js',
    '/wp-content/plugins/contact-form-7/includes/js/scripts.js',
    '/wp-content/plugins/essential-grid/public/assets/js/jquery.themepunch.tools.min.js',
    '/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js',
    '/wp-content/plugins/trx_addons/js/swiper/swiper.jquery.min.js',
    '/wp-content/plugins/trx_addons/js/magnific/jquery.magnific-popup.min.js',
    '/wp-content/plugins/trx_addons/js/trx_addons.js',
    '/wp-content/plugins/trx_demo/js/trx_demo_panels.js',
    '/wp-content/plugins/trx_addons/components/cpt/layouts/shortcodes/menu/superfish.min.js',
    '/wp-content/plugins/wp-gdpr-compliance/assets/js/front.js',
    '/wp-content/themes/prolingua/js/__scripts.js',
    '/wp-includes/js/mediaelement/mediaelement-and-player.min.js',
    '/wp-includes/js/mediaelement/mediaelement-migrate.min.js',
    '/wp-includes/js/mediaelement/wp-mediaelement.min.js',
    '/wp-includes/js/wp-embed.min.js',
    '/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js',
    '/wp-content/plugins/vc-extensions-bundle/hotspot/../profilecard/js/jquery.tooltipster.min.js',
    '/wp-content/plugins/vc-extensions-bundle/hotspot/js/script.min.js',
    '/wp-content/plugins/js_composer/assets/lib/waypoints/waypoints.min.js',
    '/wp-content/plugins/mailchimp-for-wp/assets/js/forms-api.min.js',
    '/images/icons/icon-72x72.png',
    '/images/icons/icon-96x96.png',
    '/images/icons/icon-128x128.png',
    '/images/icons/icon-144x144.png',
    '/images/icons/icon-152x152.png',
    '/images/icons/icon-192x192.png',
    '/images/icons/icon-384x384.png',
    '/images/icons/icon-512x512.png',
];

// Cache on install
self.addEventListener("install", event => {
    this.skipWaiting();
    event.waitUntil(
        caches.open(staticCacheName)
            .then(cache => {
                return cache.addAll(filesToCache);
            })
    )
});

// Clear cache on activate
self.addEventListener('activate', event => {
    event.waitUntil(
        caches.keys().then(cacheNames => {
            return Promise.all(
                cacheNames
                    .filter(cacheName => (cacheName.startsWith("pwa-")))
                    .filter(cacheName => (cacheName !== staticCacheName))
                    .map(cacheName => caches.delete(cacheName))
            );
        })
    );
});

// Serve from Cache
self.addEventListener("fetch", event => {
    event.respondWith(
        caches.match(event.request)
            .then(response => {
                return response || fetch(event.request);
            })
            .catch(() => {
                return caches.match('offline');
            })
    )
});