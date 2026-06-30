<?php
/**
 * STEW Blocksy Child Theme Functions
 *
 * Child theme for Blocksy, carrying forward all WooCommerce
 * customisations from the previous Salient-based STEW child theme.
 *
 * @package STEW_Blocksy_Child
 * @version 2.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
    exit;
}

define( 'STEW_CHILD_VERSION', '2.2.2' );
define( 'STEW_CHILD_DIR', get_stylesheet_directory() );
define( 'STEW_CHILD_URI', get_stylesheet_directory_uri() );

/* =====================================================================
   1. ENQUEUE STYLES & SCRIPTS
   ===================================================================== */

/**
 * Enqueue parent (Blocksy) and child theme styles + scripts.
 *
 * Blocksy registers its main stylesheet with the handle 'ct-main-styles'.
 * Priority 20 is sufficient — no high-priority hack needed.
 */
function stew_enqueue_assets() {

    // --- Styles ---

    // Detect Blocksy's main stylesheet handle (varies by version)
    $parent_handle = 'blocksy-styles';
    if ( ! wp_style_is( $parent_handle, 'registered' ) ) {
        // Fallback handles Blocksy may use
        foreach ( array( 'ct-main-styles', 'blocksy-styles-css' ) as $handle ) {
            if ( wp_style_is( $handle, 'registered' ) ) {
                $parent_handle = $handle;
                break;
            }
        }
    }

    // Parent theme stylesheet (ensure Blocksy CSS is loaded first)
    wp_enqueue_style(
        'stew-parent-style',
        get_template_directory_uri() . '/style.css',
        array(),
        STEW_CHILD_VERSION
    );

    // Child theme style.css
    wp_enqueue_style(
        'stew-child-style',
        get_stylesheet_uri(),
        array( 'stew-parent-style' ),
        STEW_CHILD_VERSION
    );

    // Custom CSS
    wp_enqueue_style(
        'stew-custom-css',
        STEW_CHILD_URI . '/assets/css/stew-custom.css',
        array( 'stew-child-style' ),
        STEW_CHILD_VERSION
    );

    // Blocksy-specific overrides (loaded last for highest priority)
    wp_enqueue_style(
        'stew-blocksy-overrides',
        STEW_CHILD_URI . '/assets/css/stew-blocksy-overrides.css',
        array( 'stew-custom-css' ),
        STEW_CHILD_VERSION
    );

    // Google Fonts — Inter (loaded via wp_enqueue_style, not @import)
    wp_enqueue_style(
        'stew-google-fonts',
        'https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap',
        array(),
        null // Google Fonts URLs are versioned by query string already
    );

    // Force STEW palette via inline CSS (overrides Blocksy customizer inline styles)
    $palette_overrides = '
        :root {
            --theme-palette-color-1: hsl(38, 80%, 50%) !important;
            --theme-palette-color-2: hsl(38, 80%, 40%) !important;
            --theme-palette-color-3: #1A1A1A !important;
            --theme-palette-color-4: #737373 !important;
            --theme-palette-color-5: #E8E5E0 !important;
            --theme-palette-color-6: #F8F7F5 !important;
            --theme-palette-color-7: #FFFFFF !important;
            --theme-palette-color-8: #0F0F0F !important;
        }
    ';
    wp_add_inline_style( 'stew-blocksy-overrides', $palette_overrides );

    // --- Scripts ---

    // Custom JS
    wp_enqueue_script(
        'stew-custom-js',
        STEW_CHILD_URI . '/assets/js/stew-custom.js',
        array( 'jquery' ),
        STEW_CHILD_VERSION,
        true
    );

    // Pass AJAX URL to JS
    wp_localize_script( 'stew-custom-js', 'stewAjax', array(
        'ajaxurl' => admin_url( 'admin-ajax.php' ),
        'nonce'   => wp_create_nonce( 'stew_nonce' ),
    ) );
}
add_action( 'wp_enqueue_scripts', 'stew_enqueue_assets', 20 );

/**
 * Force STEW color palette into Blocksy's customizer options.
 * This ensures Blocksy's inline styles use STEW colors instead of defaults.
 */
function stew_override_blocksy_palette( $value ) {
    return array(
        'color1' => array( 'color' => 'hsl(38, 80%, 50%)' ),  // Gold primary
        'color2' => array( 'color' => 'hsl(38, 80%, 40%)' ),  // Dark gold
        'color3' => array( 'color' => '#1A1A1A' ),             // Headings
        'color4' => array( 'color' => '#737373' ),             // Body text
        'color5' => array( 'color' => '#E8E5E0' ),             // Borders
        'color6' => array( 'color' => '#F8F7F5' ),             // Light bg
        'color7' => array( 'color' => '#FFFFFF' ),             // Site bg
        'color8' => array( 'color' => '#0F0F0F' ),             // Footer bg
    );
}
add_filter( 'theme_mod_colorPalette', 'stew_override_blocksy_palette' );

/**
 * Replace Blocksy's default footer with STEW custom footer.
 */
function stew_custom_footer() {
    // Remove Blocksy's footer
    remove_action( 'blocksy:footer:before', 'blocksy_output_footer_before' );

    get_template_part( 'template-parts/footer-custom' );
}
add_action( 'wp_footer', 'stew_custom_footer', 5 );

/**
 * Hide Blocksy's built-in footer via CSS (belt and suspenders).
 */
function stew_hide_blocksy_footer() {
    echo '<style>footer.ct-footer { display: none !important; }</style>';
}
add_action( 'wp_head', 'stew_hide_blocksy_footer' );

/* =====================================================================
   1b. HEADER CART ICON WITH COUNT BADGE
   ===================================================================== */

/**
 * Add a cart icon with item count to the header.
 */
function stew_header_cart_icon() {
    if ( ! function_exists( 'WC' ) ) {
        return;
    }
    $count = WC()->cart ? WC()->cart->get_cart_contents_count() : 0;
    $cart_label = sprintf(
        /* translators: %d: number of items in cart */
        _n( 'Warenkorb, %d Artikel', 'Warenkorb, %d Artikel', $count, 'stew-blocksy-child' ),
        $count
    );
    ?>
    <a href="<?php echo esc_url( wc_get_cart_url() ); ?>" class="stew-header-cart" aria-label="<?php echo esc_attr( $cart_label ); ?>">
        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
            <circle cx="9" cy="21" r="1"/><circle cx="20" cy="21" r="1"/>
            <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"/>
        </svg>
        <span class="stew-header-cart__count" aria-hidden="true" <?php echo $count === 0 ? 'style="display:none;"' : ''; ?>><?php echo esc_html( $count ); ?></span>
    </a>
    <?php
}
add_action( 'blocksy:header:after', 'stew_header_cart_icon' );
// Fallback if Blocksy hook doesn't fire
add_action( 'wp_body_open', function() {
    // We'll position it with CSS fixed in the header area
});

/**
 * Update cart count via AJAX fragments.
 */
function stew_cart_count_fragment( $fragments ) {
    $count = WC()->cart->get_cart_contents_count();
    $fragments['.stew-header-cart__count'] = '<span class="stew-header-cart__count" ' . ( $count === 0 ? 'style="display:none;"' : '' ) . '>' . esc_html( $count ) . '</span>';
    return $fragments;
}
add_filter( 'woocommerce_add_to_cart_fragments', 'stew_cart_count_fragment' );

/* =====================================================================
   1c. ADD-TO-CART TOAST NOTIFICATION
   ===================================================================== */

/**
 * Hide the "View cart" link on product cards and show a toast instead.
 */
function stew_cart_toast_scripts() {
    if ( ! function_exists( 'WC' ) ) {
        return;
    }
    ?>
    <style>
    /* Hide "View basket" link on product cards */
    .woocommerce ul.products li.product a.added_to_cart {
        display: none !important;
    }

    /* Header cart icon — moved inline into Blocksy's primary header flex
       container by JS below, so flexbox handles spacing automatically. */
    .stew-header-cart {
        position: relative;
        display: inline-flex;
        align-items: center;
        gap: 4px;
        margin-left: 1rem;
        color: #1A1A1A;
        text-decoration: none;
        transition: color 0.25s ease;
    }
    .stew-header-cart:hover {
        color: #C9A96E;
    }
    .stew-header-cart__count {
        background: #C9A96E;
        color: #FFFFFF;
        font-size: 0.6875rem;
        font-weight: 700;
        min-width: 18px;
        height: 18px;
        line-height: 18px;
        text-align: center;
        border-radius: 50%;
        position: absolute;
        top: -6px;
        right: -8px;
    }

    /* Toast notification */
    .stew-toast {
        position: fixed;
        bottom: 30px;
        right: 30px;
        z-index: 99999;
        background: #1A1A1A;
        color: #FFFFFF;
        padding: 14px 24px;
        border-radius: 8px;
        font-size: 0.9375rem;
        font-weight: 500;
        box-shadow: 0 8px 30px rgba(0,0,0,0.2);
        transform: translateY(20px);
        opacity: 0;
        transition: all 0.3s ease;
        display: flex;
        align-items: center;
        gap: 10px;
        max-width: 400px;
        /* While invisible, don't intercept clicks/touches. Without this
           the toast still has display:flex + opacity:0 and silently
           swallows taps on whatever sits beneath it — on mobile that's
           the floating "Filter" button at the bottom of the shop page. */
        pointer-events: none;
    }
    .stew-toast.stew-toast--visible {
        transform: translateY(0);
        opacity: 1;
        pointer-events: auto;
    }
    .stew-toast__icon {
        color: #C9A96E;
        flex-shrink: 0;
    }
    .stew-toast a {
        color: #C9A96E !important;
        text-decoration: none !important;
        margin-left: 8px;
        white-space: nowrap;
    }
    .stew-toast a:hover {
        text-decoration: underline !important;
    }

    @media (max-width: 575px) {
        .stew-toast {
            left: 16px;
            right: 16px;
            bottom: 16px;
            max-width: none;
        }
    }
    </style>

    <div class="stew-toast" id="stew-cart-toast">
        <svg class="stew-toast__icon" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>
        <span class="stew-toast__text">Produkt wurde hinzugefügt</span>
        <a href="<?php echo esc_url( wc_get_cart_url() ); ?>">Warenkorb →</a>
    </div>

    <script>
    jQuery(function($) {
        // Move the cart icon inline into Blocksy's header, before the visible
        // trigger button (search on desktop, hamburger on mobile). Flexbox
        // spacing then handles layout without manual right offsets.
        function stewPlaceCart() {
            var $cart = $('.stew-header-cart');
            if (!$cart.length) return;
            var $anchor = $('button.ct-header-search:visible, button.ct-header-trigger.ct-toggle:visible').first();
            if ($anchor.length && !$anchor.prev().is('.stew-header-cart')) {
                $cart.detach().insertBefore($anchor);
            }
        }
        stewPlaceCart();
        // Re-place on resize so it follows the active breakpoint
        var resizeTimer;
        $(window).on('resize', function() {
            clearTimeout(resizeTimer);
            resizeTimer = setTimeout(stewPlaceCart, 150);
        });

        var toastTimer;
        $(document.body).on('added_to_cart', function(e, fragments, cartHash, $btn) {
            var $toast = $('#stew-cart-toast');
            clearTimeout(toastTimer);
            $toast.addClass('stew-toast--visible');
            toastTimer = setTimeout(function() {
                $toast.removeClass('stew-toast--visible');
            }, 4000);
        });

        // Show toast on page load if stew_show_toast cookie is set
        // (covers full-page-reload add-to-cart paths where URL params get stripped)
        function stewReadAndClearCookie(name) {
            var m = document.cookie.match(new RegExp('(?:^|;\\s*)' + name + '=([^;]*)'));
            if (!m) return null;
            document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/';
            return decodeURIComponent(m[1]);
        }
        if (stewReadAndClearCookie('stew_show_toast')) {
            var $toast = $('#stew-cart-toast');
            clearTimeout(toastTimer);
            $toast.addClass('stew-toast--visible');
            toastTimer = setTimeout(function() {
                $toast.removeClass('stew-toast--visible');
            }, 4000);
        }
    });
    </script>
    <?php
}
add_action( 'wp_footer', 'stew_cart_toast_scripts', 99 );

/**
 * Set a short-lived cookie when a product is added to cart so the
 * toast can fire on the next page load (covers non-AJAX adds).
 */
function stew_set_toast_cookie() {
    if ( ! headers_sent() ) {
        setcookie( 'stew_show_toast', '1', time() + 60, COOKIEPATH ? COOKIEPATH : '/', COOKIE_DOMAIN );
    }
}
add_action( 'woocommerce_add_to_cart', 'stew_set_toast_cookie', 10, 0 );

/* =====================================================================
   2. WOOCOMMERCE SUPPORT
   ===================================================================== */

/**
 * Declare WooCommerce support with gallery features.
 */
function stew_woocommerce_support() {
    add_theme_support( 'woocommerce', array(
        'thumbnail_image_width' => 400,
        'single_image_width'    => 800,
        'product_grid'          => array(
            'default_rows'    => 4,
            'min_rows'        => 1,
            'default_columns' => 3,
            'min_columns'     => 1,
            'max_columns'     => 4,
        ),
    ) );
    add_theme_support( 'wc-product-gallery-zoom' );
    add_theme_support( 'wc-product-gallery-lightbox' );
    add_theme_support( 'wc-product-gallery-slider' );
}
add_action( 'after_setup_theme', 'stew_woocommerce_support' );

/**
 * WooCommerce-Standardoptionen beim Theme-Wechsel setzen.
 * Aktiviert AJAX-„In den Warenkorb" und verhindert Redirect zur Warenkorb-Seite.
 */
function stew_set_woocommerce_defaults() {
    update_option( 'woocommerce_enable_ajax_add_to_cart', 'yes' );
    update_option( 'woocommerce_cart_redirect_after_add', 'no' );
}
add_action( 'after_switch_theme', 'stew_set_woocommerce_defaults' );

/* =====================================================================
   3. CUSTOM IMAGE SIZES
   ===================================================================== */

function stew_custom_image_sizes() {
    add_image_size( 'product-card', 400, 400, true );
    add_image_size( 'product-hero', 800, 800, false );
    add_image_size( 'category-card', 600, 450, true );
}
add_action( 'after_setup_theme', 'stew_custom_image_sizes' );

/* =====================================================================
   4. NAVIGATION MENUS
   ===================================================================== */

function stew_register_menus() {
    register_nav_menus( array(
        'stew_footer_menu'  => __( 'Footer Navigation', 'stew-blocksy-child' ),
        'stew_catalog_menu' => __( 'Katalog Navigation', 'stew-blocksy-child' ),
    ) );
}
add_action( 'after_setup_theme', 'stew_register_menus' );

/* =====================================================================
   5. "PREIS AUF ANFRAGE" (PRICE ON REQUEST) LOGIC
   ===================================================================== */

/**
 * Replace the price display with "Preis auf Anfrage" when price is 0 or empty.
 */
function stew_price_auf_anfrage( $price, $product ) {
    if ( '' === $product->get_price() || 0 == $product->get_price() ) {
        return '<span class="stew-price-inquiry">Preis auf Anfrage</span>';
    }
    return $price;
}
add_filter( 'woocommerce_get_price_html', 'stew_price_auf_anfrage', 10, 2 );

/**
 * Change "Add to cart" button text for price-on-request products.
 */
function stew_add_to_cart_text( $text, $product ) {
    if ( '' === $product->get_price() || 0 == $product->get_price() ) {
        return __( 'Anfragen', 'stew-blocksy-child' );
    }
    return $text;
}
add_filter( 'woocommerce_product_single_add_to_cart_text', 'stew_add_to_cart_text', 10, 2 );
add_filter( 'woocommerce_product_add_to_cart_text', 'stew_add_to_cart_text', 10, 2 );

/**
 * Redirect "Anfragen" button to contact page for price-on-request products.
 */
function stew_add_to_cart_url( $url, $product ) {
    if ( '' === $product->get_price() || 0 == $product->get_price() ) {
        return home_url( '/kontakt/?anfrage=' . urlencode( $product->get_name() ) );
    }
    return $url;
}
add_filter( 'woocommerce_product_add_to_cart_url', 'stew_add_to_cart_url', 10, 2 );

/**
 * Telefon-Feld an der Kasse zur Pflicht machen.
 */
function stew_require_billing_phone( $fields ) {
    if ( isset( $fields['phone'] ) ) {
        $fields['phone']['required'] = true;
    }
    return $fields;
}
add_filter( 'woocommerce_billing_fields', 'stew_require_billing_phone', 20 );

/**
 * Versandregel: Wenn kostenloser Versand verfuegbar ist (Warenkorb >= CHF 500),
 * den Pauschalversand ausblenden — damit der Kunde nicht versehentlich zahlt.
 */
function stew_hide_flat_rate_when_free_available( $rates ) {
    $free_available = false;
    foreach ( $rates as $rate ) {
        if ( 'free_shipping' === $rate->method_id ) {
            $free_available = true;
            break;
        }
    }
    if ( ! $free_available ) {
        return $rates;
    }
    foreach ( $rates as $rate_id => $rate ) {
        if ( 'flat_rate' === $rate->method_id ) {
            unset( $rates[ $rate_id ] );
        }
    }
    return $rates;
}
add_filter( 'woocommerce_package_rates', 'stew_hide_flat_rate_when_free_available', 100 );

/**
 * Verhindert die WordPress-Standard-404-Antwort, wenn der Shop-Filter
 * weniger Produkte zurueckgibt als die aktuelle Seitenzahl benoetigt.
 *
 * Szenario: Besucher ist auf /shop/page/3/, klickt einen restriktiveren
 * Filter (z.B. Casambi = 9 Produkte) → URL wird /shop/page/3/?filter_...
 * → WP findet keine Posts auf Seite 3 → 404. Stattdessen leiten wir
 * auf Seite 1 mit denselben Filter-Parametern weiter, damit der Besucher
 * die gefilterten Produkte sieht statt der "Oops"-Seite.
 */
function stew_shop_redirect_overflow_pagination() {
    if ( is_admin() || ! is_shop() ) {
        return;
    }
    $paged = max( 1, (int) get_query_var( 'paged' ) );
    if ( $paged <= 1 ) {
        return;
    }
    global $wp_query;
    if ( ! $wp_query ) {
        return;
    }
    if ( $paged > (int) $wp_query->max_num_pages ) {
        $shop_url     = get_permalink( wc_get_page_id( 'shop' ) );
        $query_string = isset( $_SERVER['QUERY_STRING'] ) ? sanitize_text_field( wp_unslash( $_SERVER['QUERY_STRING'] ) ) : '';
        $redirect_url = $shop_url . ( $query_string ? '?' . $query_string : '' );
        wp_safe_redirect( $redirect_url, 302 );
        exit;
    }
}
add_action( 'template_redirect', 'stew_shop_redirect_overflow_pagination', 9 );

/**
 * Stoppt ebenfalls den Standard-404 fuer Shop-Pagination, falls die
 * obige Funktion zu spaet feuert (z.B. wenn WP bereits is_404() gesetzt
 * hat, bevor template_redirect laeuft). Setzt is_404 zurueck und gibt
 * die Shop-Archiv-Vorlage aus.
 */
function stew_prevent_shop_404_on_filter() {
    global $wp_query;
    if ( ! is_404() ) {
        return;
    }
    // Nur fuer URLs, die wie eine Shop-Pagination aussehen.
    $request_uri = isset( $_SERVER['REQUEST_URI'] ) ? sanitize_text_field( wp_unslash( $_SERVER['REQUEST_URI'] ) ) : '';
    if ( ! preg_match( '#^/shop(/page/\d+)?/?(\?|$)#', $request_uri ) ) {
        return;
    }
    $shop_url     = get_permalink( wc_get_page_id( 'shop' ) );
    $query_string = isset( $_SERVER['QUERY_STRING'] ) ? sanitize_text_field( wp_unslash( $_SERVER['QUERY_STRING'] ) ) : '';
    $redirect_url = $shop_url . ( $query_string ? '?' . $query_string : '' );
    wp_safe_redirect( $redirect_url, 302 );
    exit;
}
add_action( 'template_redirect', 'stew_prevent_shop_404_on_filter', 11 );

/* =====================================================================
   5a. SITE-EINSTELLUNGEN (footer + contact data — admin-editable)
   ===================================================================== */
require_once STEW_CHILD_DIR . '/admin-pages/site-settings.php';

/* =====================================================================
   5b. INTERAKTIVES ADMIN-HANDBUCH
   ===================================================================== */

/**
 * Admin-Menu-Eintrag "Handbuch" hinzufuegen.
 * Nur fuer Administratoren sichtbar (Capability: manage_options).
 */
function stew_add_handbuch_menu() {
    add_menu_page(
        __( 'Admin-Handbuch', 'stew-blocksy-child' ),
        __( 'Handbuch', 'stew-blocksy-child' ),
        'manage_options',
        'stew-handbuch',
        'stew_render_handbuch_page',
        'dashicons-book-alt',
        3 // Direkt unter Dashboard
    );
}
add_action( 'admin_menu', 'stew_add_handbuch_menu' );

/**
 * Die Handbuch-Seite rendern.
 */
function stew_render_handbuch_page() {
    if ( ! current_user_can( 'manage_options' ) ) {
        wp_die( esc_html__( 'Keine Berechtigung.', 'stew-blocksy-child' ) );
    }
    include STEW_CHILD_DIR . '/admin-pages/handbuch.php';
}

/**
 * Breadcrumb "Home" zu "Startseite" umbenennen (WooCommerce + Blocksy).
 */
function stew_breadcrumb_home_text( $args ) {
    if ( is_array( $args ) && isset( $args['home'] ) ) {
        $args['home'] = __( 'Startseite', 'stew-blocksy-child' );
    }
    return $args;
}
add_filter( 'woocommerce_breadcrumb_defaults', 'stew_breadcrumb_home_text' );

function stew_blocksy_breadcrumb_home_text( $home ) {
    return __( 'Startseite', 'stew-blocksy-child' );
}
add_filter( 'blocksy:breadcrumbs:home-text', 'stew_blocksy_breadcrumb_home_text' );

/**
 * Konsolidierter gettext-Filter: faengt fehlende de_CH-Strings
 * von Blocksy + WooCommerce ab. Notwendig weil Blocksy nur de_DE liefert
 * und WC Blocks ein paar Strings auf en_US zurueckfallen laesst.
 */
function stew_consolidated_gettext( $translation, $text, $domain ) {
    if ( 'blocksy' === $domain ) {
        $map = array(
            'Home'                 => 'Startseite',
            'Search'               => 'Suche',
            'Skip to content'      => 'Zum Inhalt springen',
            'Expand dropdown menu' => 'Untermenü öffnen',
        );
        if ( isset( $map[ $text ] ) ) return $map[ $text ];
    }
    if ( 'woocommerce' === $domain ) {
        $map = array(
            'Next'                                      => 'Weiter',
            'Previous'                                  => 'Zurück',
            'Next page'                                 => 'Nächste Seite',
            'Previous page'                             => 'Vorherige Seite',
            'Your basket is currently empty!'           => 'Ihr Warenkorb ist derzeit leer.',
            'New in store'                              => 'Neu im Shop',
            'Return to shop'                            => 'Zurück zum Shop',
            'Add to basket'                             => 'In den Warenkorb',
            'View basket'                               => 'Warenkorb ansehen',
        );
        if ( isset( $map[ $text ] ) ) return $map[ $text ];
    }
    return $translation;
}
add_filter( 'gettext', 'stew_consolidated_gettext', 10, 3 );

/* =====================================================================
   6. REMOVE DEFAULT WOOCOMMERCE SIDEBAR
   ===================================================================== */

function stew_remove_wc_sidebar() {
    if ( is_woocommerce() || is_cart() || is_checkout() || is_account_page() ) {
        remove_action( 'woocommerce_sidebar', 'woocommerce_get_sidebar', 10 );
    }
}
add_action( 'wp', 'stew_remove_wc_sidebar' );

/* =====================================================================
   7. CUSTOM EXCERPT LENGTH
   ===================================================================== */

function stew_custom_excerpt_length( $length ) {
    if ( is_woocommerce() || is_shop() ) {
        return 20;
    }
    return $length;
}
add_filter( 'excerpt_length', 'stew_custom_excerpt_length', 999 );

/* =====================================================================
   8. CUSTOM CUSTOMER ROLES (WHOLESALE / VIP PARTNER)
   ===================================================================== */

/**
 * Register custom roles — runs once and sets an option flag.
 */
function stew_register_customer_roles() {
    if ( get_option( 'stew_roles_created' ) ) {
        return;
    }

    add_role( 'wholesale', __( 'Händler (Wholesale)', 'stew-blocksy-child' ), array(
        'read' => true,
    ) );

    add_role( 'vip_partner', __( 'VIP Partner', 'stew-blocksy-child' ), array(
        'read' => true,
    ) );

    update_option( 'stew_roles_created', true );
}
add_action( 'init', 'stew_register_customer_roles' );

/**
 * Copy WooCommerce customer capabilities to the custom roles.
 */
function stew_add_customer_caps() {
    $customer = get_role( 'customer' );
    if ( ! $customer ) {
        return;
    }

    $roles = array( 'wholesale', 'vip_partner' );
    foreach ( $roles as $role_name ) {
        $role = get_role( $role_name );
        if ( $role ) {
            foreach ( $customer->capabilities as $cap => $granted ) {
                $role->add_cap( $cap, $granted );
            }
        }
    }
}
add_action( 'admin_init', 'stew_add_customer_caps' );

/* =====================================================================
   9. ACF JSON SAVE / LOAD POINTS
   ===================================================================== */

function stew_acf_json_save_point( $path ) {
    return STEW_CHILD_DIR . '/acf-json';
}
add_filter( 'acf/settings/save_json', 'stew_acf_json_save_point' );

function stew_acf_json_load_point( $paths ) {
    $paths[] = STEW_CHILD_DIR . '/acf-json';
    return $paths;
}
add_filter( 'acf/settings/load_json', 'stew_acf_json_load_point' );

/* =====================================================================
   10. ENABLE WOOCOMMERCE REGISTRATION & MANUAL APPROVAL
   ===================================================================== */

/**
 * Force-enable WooCommerce customer registration on My Account page.
 * Also enables username/password generation so the form stays simple.
 */
function stew_enable_registration() {
    update_option( 'woocommerce_enable_myaccount_registration', 'yes' );
    update_option( 'woocommerce_registration_generate_username', 'yes' );
    update_option( 'woocommerce_registration_generate_password', 'no' );
}
add_action( 'after_setup_theme', 'stew_enable_registration' );

/**
 * Private customers get 'customer' role immediately (can shop right away).
 * Wholesale applicants are handled in role-based-pricing.php
 * (they get 'pending_wholesale' and must be approved by admin).
 */

/**
 * Register the pending_customer role.
 */
function stew_register_pending_customer_role() {
    add_role( 'pending_customer', __( 'Kunde (ausstehend)', 'stew-blocksy-child' ), array(
        'read' => true,
    ) );
}
add_action( 'after_setup_theme', 'stew_register_pending_customer_role' );

/**
 * Remove pending_customer role on theme switch.
 */
add_action( 'switch_theme', function() {
    remove_role( 'pending_customer' );
} );

/**
 * Block pending customers from accessing shop functionality.
 * They can log in but cannot purchase until approved.
 */
function stew_restrict_pending_customers() {
    if ( ! is_user_logged_in() ) {
        return;
    }

    $user = wp_get_current_user();
    if ( ! in_array( 'pending_customer', (array) $user->roles, true ) ) {
        return;
    }

    // Block checkout for pending customers
    if ( is_checkout() && ! is_wc_endpoint_url( 'order-received' ) ) {
        wc_add_notice(
            __( 'Ihr Konto wird derzeit geprüft. Sie erhalten eine E-Mail, sobald Ihr Konto freigeschaltet wurde.', 'stew-blocksy-child' ),
            'notice'
        );
        wp_safe_redirect( wc_get_page_permalink( 'myaccount' ) );
        exit;
    }
}
add_action( 'template_redirect', 'stew_restrict_pending_customers' );

/**
 * Show a notice on My Account for pending wholesale users.
 */
function stew_pending_customer_notice() {
    if ( ! is_user_logged_in() ) {
        return;
    }

    $user = wp_get_current_user();
    if ( in_array( 'pending_wholesale', (array) $user->roles, true ) ) {
        wc_print_notice(
            __( 'Ihr Händlerantrag wird geprüft. Sie erhalten eine E-Mail, sobald Ihr Konto freigeschaltet wurde.', 'stew-blocksy-child' ),
            'notice'
        );
    }
}
add_action( 'woocommerce_account_content', 'stew_pending_customer_notice', 5 );

/**
 * Notify admin when a new customer registers (informational only).
 */
function stew_notify_admin_new_customer( $customer_id ) {
    $account_type = get_user_meta( $customer_id, 'stew_account_type', true );
    // Wholesale notifications are handled in role-based-pricing.php
    if ( 'wholesale' === $account_type ) {
        return;
    }

    $user        = get_userdata( $customer_id );
    $admin_email = get_option( 'stew_admin_notify_email', get_option( 'admin_email' ) );

    $subject = sprintf( __( '[STEW] Neuer Kunde registriert: %s', 'stew-blocksy-child' ), $user->display_name );
    $message = sprintf(
        "Neuer Kunde hat sich registriert:\n\n" .
        "Name: %s\n" .
        "E-Mail: %s\n" .
        "Registriert: %s\n",
        $user->display_name,
        $user->user_email,
        wp_date( 'd.m.Y H:i', strtotime( $user->user_registered ) )
    );

    wp_mail( $admin_email, $subject, $message );
}
add_action( 'woocommerce_created_customer', 'stew_notify_admin_new_customer', 20 );

// Note: Global site settings (footer, contact, social) are stored as ACF fields
// on the Homepage to avoid requiring ACF Pro's options page feature.

/* =====================================================================
   11. INCLUDE ROLE-BASED PRICING MODULE
   ===================================================================== */

$role_pricing_file = STEW_CHILD_DIR . '/import/role-based-pricing.php';
if ( file_exists( $role_pricing_file ) ) {
    require_once $role_pricing_file;
}

// ACF field groups (registered via PHP for compatibility with ACF Free)
$acf_fields_file = STEW_CHILD_DIR . '/import/acf-fields.php';
if ( file_exists( $acf_fields_file ) ) {
    require_once $acf_fields_file;
}

/* =====================================================================
   12. WOOCOMMERCE PRODUCT GRID SETTINGS
   ===================================================================== */

/**
 * Products per page on shop / archive pages.
 */
function stew_products_per_page( $cols ) {
    return 24;
}
add_filter( 'loop_shop_per_page', 'stew_products_per_page', 20 );

/**
 * Number of columns in the product loop.
 */
function stew_loop_columns() {
    return 3;
}
add_filter( 'loop_shop_columns', 'stew_loop_columns' );

/* =====================================================================
   13. BODY CLASSES
   ===================================================================== */

function stew_body_classes( $classes ) {
    $classes[] = 'stew-theme';
    if ( is_woocommerce() ) {
        $classes[] = 'stew-woocommerce';
    }
    return $classes;
}
add_filter( 'body_class', 'stew_body_classes' );

/* =====================================================================
   14. DIMMING TYPE LABELS
   ===================================================================== */

/**
 * Translate internal dimming-type values to human-readable German labels.
 */
function stew_dimming_label( $value ) {
    $labels = array(
        'not_dimmable' => 'Nicht dimmbar (ON/OFF)',
        'dali'         => 'DALI / DALI 2 dimmbar',
        '1_10v'        => '1-10V dimmbar',
        'casambi'      => 'Casambi BLE',
        'touchdim'     => 'TouchDIM',
        'nfc'          => 'NFC programmierbar',
        'one4all'      => 'one4all',
        'zigbee'       => 'Zigbee',
    );
    return isset( $labels[ $value ] ) ? $labels[ $value ] : $value;
}

/* =====================================================================
   15. PRODUCT HIGHLIGHTS (SINGLE PRODUCT PAGE)
   ===================================================================== */

/**
 * Display a highlights box after the add-to-cart area on single product pages.
 */
function stew_product_highlights() {
    global $product;
    $pid = $product->get_id();

    $power   = get_post_meta( $pid, 'power_watts', true );
    $ip      = get_post_meta( $pid, 'ip_protection', true );
    $dimming = get_post_meta( $pid, 'dimming_type', true );
    $voltage = get_post_meta( $pid, 'input_voltage', true );
    $sku     = $product->get_sku();

    $items = array();
    if ( $power )   $items[] = $power . 'W Leistung';
    if ( $ip )      $items[] = 'Schutzart ' . $ip;
    if ( $dimming ) {
        if ( is_array( $dimming ) ) {
            $items[] = implode( ', ', array_map( 'stew_dimming_label', $dimming ) );
        } else {
            $items[] = stew_dimming_label( $dimming );
        }
    }
    if ( $voltage ) $items[] = $voltage;
    if ( $sku )     $items[] = 'Art.-Nr.: ' . $sku;

    $part_nr = get_post_meta( $pid, 'manufacturer_part_number', true );
    if ( $part_nr ) $items[] = 'Herst.-Art.-Nr.: ' . $part_nr;

    if ( empty( $items ) ) return;

    echo '<div class="stew-product-highlights">';
    foreach ( $items as $item ) {
        echo '<div style="display:flex;align-items:center;gap:0.5rem;padding:0.35rem 0;font-size:0.875rem;">';
        echo '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#C9A96E" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><polyline points="20 6 9 17 4 12"></polyline></svg>';
        echo '<span>' . esc_html( $item ) . '</span>';
        echo '</div>';
    }
    echo '</div>';

    // Datasheet button
    $datasheet = get_post_meta( $pid, 'datasheet_pdf', true );
    if ( $datasheet ) {
        echo '<div style="margin-top:1rem;">';
        echo '<a href="' . esc_url( $datasheet ) . '" target="_blank" rel="noopener" class="stew-datasheet-btn">';
        echo esc_html__( 'Datenblatt herunterladen', 'stew-blocksy-child' );
        echo '</a></div>';
    }
}
add_action( 'woocommerce_single_product_summary', 'stew_product_highlights', 35 );

/**
 * Datenblatt-Platzhalter-Button auf Produktseite anzeigen.
 * Sendet eine vorausgefüllte Anfrage-E-Mail an info@stew.ch.
 */
function stew_display_datasheet_button() {
    if ( ! is_product() ) {
        return;
    }
    global $product;
    if ( ! $product ) {
        return;
    }
    $name    = $product->get_name();
    $sku     = $product->get_sku();
    $subject = rawurlencode( sprintf( 'Datenblatt-Anfrage: %s', $name ) );
    $body    = rawurlencode( sprintf( "Bitte senden Sie mir das Datenblatt zu folgendem Produkt:\n\nProdukt: %s\nArt.-Nr.: %s\n\nVielen Dank.", $name, $sku ) );
    $mailto  = sprintf( 'mailto:info@stew.ch?subject=%s&body=%s', $subject, $body );
    printf(
        '<a class="stew-datasheet-btn button" href="%s">%s</a>',
        esc_url( $mailto ),
        esc_html__( 'Datenblatt anfragen', 'stew-blocksy-child' )
    );
}
add_action( 'woocommerce_single_product_summary', 'stew_display_datasheet_button', 35 );

/* =====================================================================
   16. PRODUCT MANUFACTURER (SINGLE PRODUCT PAGE)
   ===================================================================== */

/**
 * Show manufacturer/brand name below the product title.
 */
function stew_product_manufacturer() {
    $manufacturer = get_post_meta( get_the_ID(), 'manufacturer_brand', true );
    if ( $manufacturer ) {
        echo '<p style="color:#737373;font-size:0.875rem;margin:-0.5rem 0 1rem;">' . esc_html( $manufacturer ) . '</p>';
    }
}
add_action( 'woocommerce_single_product_summary', 'stew_product_manufacturer', 6 );

/* =====================================================================
   17. RELATED PRODUCTS ARGS
   ===================================================================== */

function stew_related_products_args( $args ) {
    $args['posts_per_page'] = 3;
    $args['columns']        = 3;
    return $args;
}
add_filter( 'woocommerce_output_related_products_args', 'stew_related_products_args' );

/* =====================================================================
   18. TECHNISCHE DATEN — PRODUCT SPECS TAB
   ===================================================================== */

/**
 * Rename the WC default "Additional information" tab to "Technische Daten".
 * Tab content is rendered by the template override at
 * woocommerce/single-product/tabs/additional-information.php, which reads
 * both ACF postmeta and WC product attributes.
 */
function stew_rename_additional_info_tab( $tabs ) {
    if ( isset( $tabs['additional_information'] ) ) {
        $tabs['additional_information']['title']    = __( 'Technische Daten', 'stew-blocksy-child' );
        $tabs['additional_information']['priority'] = 15;
    }
    return $tabs;
}
add_filter( 'woocommerce_product_tabs', 'stew_rename_additional_info_tab', 98 );

/* =====================================================================
   19. REGISTER SHOP FILTER SIDEBAR
   ===================================================================== */

/**
 * Register a widget area for WooCommerce filter widgets (price, attributes, etc.).
 */
function stew_register_shop_filter_sidebar() {
    register_sidebar( array(
        'name'          => __( 'Shop Filter Sidebar', 'stew-blocksy-child' ),
        'id'            => 'shop-filter-sidebar',
        'description'   => __( 'Widget-Bereich für WooCommerce-Filter auf Shop- und Archivseiten.', 'stew-blocksy-child' ),
        'before_widget' => '<div id="%1$s" class="widget stew-filter-widget %2$s">',
        'after_widget'  => '</div>',
        'before_title'  => '<h4 class="widget-title stew-filter-title">',
        'after_title'   => '</h4>',
    ) );
}
add_action( 'widgets_init', 'stew_register_shop_filter_sidebar' );

/* =====================================================================
   20. ATTRIBUTE FILTER QUERY HANDLING
   ===================================================================== */

/**
 * Get filtered product counts for a given attribute taxonomy.
 *
 * Builds a query from all active filters EXCEPT the one being counted,
 * then counts how many matching products have each term via a single SQL query.
 *
 * @param string $count_taxonomy The taxonomy to count (e.g. 'pa_dimmung').
 * @param array  $all_attributes List of attribute slugs.
 * @return array Term slug => count.
 */
function stew_get_filtered_term_counts( $count_taxonomy, $all_attributes ) {
    $tax_query = array( 'relation' => 'AND' );
    $count_slug = str_replace( 'pa_', '', $count_taxonomy );

    // Build tax_query from all OTHER active filters
    foreach ( $all_attributes as $slug ) {
        if ( $slug === $count_slug ) {
            continue;
        }
        $param = 'filter_' . $slug;
        if ( empty( $_GET[ $param ] ) ) {
            continue;
        }
        $terms = array_map( 'sanitize_text_field', explode( ',', wp_unslash( $_GET[ $param ] ) ) );
        $tax_query[] = array(
            'taxonomy' => 'pa_' . $slug,
            'field'    => 'slug',
            'terms'    => $terms,
            'operator' => 'IN',
        );
    }

    if ( is_product_category() ) {
        $cat = get_queried_object();
        if ( $cat ) {
            $tax_query[] = array(
                'taxonomy' => 'product_cat',
                'field'    => 'term_id',
                'terms'    => array( $cat->term_id ),
            );
        }
    }

    // Get IDs of products matching all other filters
    $product_ids = get_posts( array(
        'post_type'      => 'product',
        'post_status'    => 'publish',
        'posts_per_page' => -1,
        'fields'         => 'ids',
        'tax_query'      => $tax_query,
    ) );

    if ( empty( $product_ids ) ) {
        return array();
    }

    // Single SQL query: count terms for matching products
    global $wpdb;
    $id_placeholders = implode( ',', array_fill( 0, count( $product_ids ), '%d' ) );

    // phpcs:disable WordPress.DB.PreparedSQL.InterpolatedNotPrepared
    $results = $wpdb->get_results( $wpdb->prepare(
        "SELECT t.slug, COUNT(DISTINCT tr.object_id) as cnt
         FROM {$wpdb->term_relationships} tr
         INNER JOIN {$wpdb->term_taxonomy} tt ON tr.term_taxonomy_id = tt.term_taxonomy_id
         INNER JOIN {$wpdb->terms} t ON tt.term_id = t.term_id
         WHERE tt.taxonomy = %s
         AND tr.object_id IN ($id_placeholders)
         GROUP BY t.slug",
        array_merge( array( $count_taxonomy ), $product_ids )
    ) );
    // phpcs:enable

    $counts = array();
    if ( $results ) {
        foreach ( $results as $row ) {
            $counts[ $row->slug ] = (int) $row->cnt;
        }
    }

    return $counts;
}

/**
 * Filter the product query based on attribute filter URL params.
 * Supports: ?filter_dimmung=dali,casambi&query_type_dimmung=or
 */
function stew_filter_products_by_attributes( $query ) {
    if ( is_admin() || ! $query->is_main_query() ) {
        return;
    }
    if ( ! is_shop() && ! is_product_category() && ! is_product_tag() ) {
        return;
    }

    $tax_query = $query->get( 'tax_query' );
    if ( ! is_array( $tax_query ) ) {
        $tax_query = array();
    }

    $filter_attributes = array( 'betriebsart', 'leistung', 'dimmung', 'ausgangsstrom', 'hersteller', 'schutzart', 'bauform' );

    foreach ( $filter_attributes as $slug ) {
        $param = 'filter_' . $slug;
        if ( empty( $_GET[ $param ] ) ) {
            continue;
        }

        $terms      = array_map( 'sanitize_text_field', explode( ',', wp_unslash( $_GET[ $param ] ) ) );
        $query_type = isset( $_GET[ 'query_type_' . $slug ] ) ? sanitize_text_field( wp_unslash( $_GET[ 'query_type_' . $slug ] ) ) : 'or';

        $tax_query[] = array(
            'taxonomy' => 'pa_' . $slug,
            'field'    => 'slug',
            'terms'    => $terms,
            'operator' => 'or' === $query_type ? 'IN' : 'AND',
        );
    }

    if ( ! empty( $tax_query ) ) {
        $query->set( 'tax_query', $tax_query );
    }
}
add_action( 'pre_get_posts', 'stew_filter_products_by_attributes' );

/**
 * Output shop filter scripts (collapsible groups + mobile sidebar toggle).
 */
function stew_shop_filter_scripts() {
    if ( ! is_shop() && ! is_product_category() ) {
        return;
    }
    ?>
    <script>
    document.addEventListener("DOMContentLoaded", function() {
        /* Mobile sidebar toggle */
        var toggle = document.getElementById("filter-toggle");
        var sidebar = document.getElementById("shop-filters");
        if (toggle && sidebar) {
            toggle.addEventListener("click", function() {
                sidebar.classList.toggle("stew-shop-sidebar--open");
                toggle.classList.toggle("stew-shop-filter-toggle--active");
            });
        }

        /* Collapsible filter groups */
        document.querySelectorAll(".stew-filter-toggle").forEach(function(btn) {
            btn.addEventListener("click", function(e) {
                e.preventDefault();
                var group = btn.closest(".stew-filter-group");
                var body = group.querySelector(".stew-filter-body");
                var expanded = btn.getAttribute("aria-expanded") === "true";
                btn.setAttribute("aria-expanded", expanded ? "false" : "true");
                body.style.display = expanded ? "none" : "";
            });
        });
    });
    </script>
    <?php
}
add_action( 'wp_footer', 'stew_shop_filter_scripts' );

/* =====================================================================
   21. DISABLE BLOCK EDITOR FOR ACF TEMPLATE PAGES
   ===================================================================== */

/**
 * Use classic editor on pages with STEW custom templates so ACF fields
 * are visible below the content editor.
 */
function stew_disable_gutenberg_for_templates( $use_block_editor, $post ) {
    if ( empty( $post->ID ) ) {
        return $use_block_editor;
    }

    $template = get_page_template_slug( $post->ID );
    $stew_templates = array(
        'page-templates/template-homepage.php',
        'page-templates/template-about.php',
        'page-templates/template-contact.php',
    );

    if ( in_array( $template, $stew_templates, true ) ) {
        return false;
    }

    return $use_block_editor;
}
add_filter( 'use_block_editor_for_post', 'stew_disable_gutenberg_for_templates', 10, 2 );
