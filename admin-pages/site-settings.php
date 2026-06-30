<?php
/**
 * Site-Einstellungen Admin Page
 *
 * Custom WP admin page that lets non-technical admins (Ronny, Michael)
 * edit site-wide identity, contact details, and footer copy from one
 * single screen — without touching code or template files.
 *
 * Values are stored in wp_options under stew_site_* keys and consumed by
 * template-parts/footer-custom.php and page-templates/template-contact.php.
 *
 * Built with the WordPress Settings API for stability + native UX.
 * No external plugin or ACF Pro dependency.
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

/* ---------------------------------------------------------------------------
 * Defaults — used when an option has never been saved.
 * Keep in sync with the existing Kontakt page ACF defaults so first-load
 * never looks broken.
 * --------------------------------------------------------------------------- */
function stew_site_settings_defaults() {
    return array(
        'company_name'       => 'STEW GmbH',
        'address_line_1'     => 'Industriestrasse 15',
        'address_line_2'     => '6060 Sarnen',
        'address_country'    => 'Schweiz',
        'phone'              => '',
        'email'              => 'info@stew.ch',
        'opening_hours'      => "Mo-Fr: 08:00 - 17:00",
        'footer_logo_text'   => 'STEW.',
        'footer_description' => 'Online Shop für Leuchten und Steuergeräte. Professionelle LED-Beleuchtung für anspruchsvolle Projekte.',
        'footer_copyright'   => '© {YEAR} STEW. Alle Rechte vorbehalten.',
    );
}

/* ---------------------------------------------------------------------------
 * Public helper: read a single site-settings value with default fallback.
 * --------------------------------------------------------------------------- */
function stew_site_setting( $key ) {
    $defaults = stew_site_settings_defaults();
    $option   = get_option( 'stew_site_' . $key, '' );
    if ( $option === '' || $option === null ) {
        return isset( $defaults[ $key ] ) ? $defaults[ $key ] : '';
    }
    return $option;
}

/* ---------------------------------------------------------------------------
 * Admin menu — top-level, "Einstellungen" icon, position 4 (under Handbuch).
 * --------------------------------------------------------------------------- */
function stew_register_site_settings_menu() {
    add_menu_page(
        __( 'Site-Einstellungen', 'stew-blocksy-child' ),
        __( 'Site-Einstellungen', 'stew-blocksy-child' ),
        'manage_options',
        'stew-site-settings',
        'stew_render_site_settings_page',
        'dashicons-admin-site-alt3',
        4
    );
}
add_action( 'admin_menu', 'stew_register_site_settings_menu' );

/* ---------------------------------------------------------------------------
 * Register the settings + sections + fields with WP Settings API.
 * --------------------------------------------------------------------------- */
function stew_register_site_settings_fields() {
    $defaults = stew_site_settings_defaults();
    foreach ( $defaults as $key => $_default ) {
        register_setting(
            'stew_site_settings_group',
            'stew_site_' . $key,
            array(
                'sanitize_callback' => 'wp_kses_post',
                'default'           => '',
            )
        );
    }

    // -- Section 1: Identität & Kontaktdaten ------------------------------------
    add_settings_section(
        'stew_site_section_identity',
        __( 'Identität & Kontaktdaten', 'stew-blocksy-child' ),
        function () {
            echo '<p style="color:#555;max-width:680px">' . esc_html__(
                'Diese Angaben werden im Footer auf jeder Seite und auf der Kontakt-Seite angezeigt. Eine Änderung wirkt sich überall aus.',
                'stew-blocksy-child'
            ) . '</p>';
        },
        'stew-site-settings'
    );

    $identity_fields = array(
        'company_name'    => array( __( 'Firmenname',     'stew-blocksy-child' ), 'text' ),
        'address_line_1'  => array( __( 'Adresszeile 1',  'stew-blocksy-child' ), 'text' ),
        'address_line_2'  => array( __( 'Adresszeile 2 (PLZ + Ort)', 'stew-blocksy-child' ), 'text' ),
        'address_country' => array( __( 'Land',           'stew-blocksy-child' ), 'text' ),
        'phone'           => array( __( 'Telefon',        'stew-blocksy-child' ), 'text' ),
        'email'           => array( __( 'E-Mail',         'stew-blocksy-child' ), 'email' ),
        'opening_hours'   => array( __( 'Öffnungszeiten', 'stew-blocksy-child' ), 'textarea' ),
    );
    foreach ( $identity_fields as $key => $meta ) {
        add_settings_field(
            'stew_site_' . $key,
            $meta[0],
            'stew_render_site_settings_field',
            'stew-site-settings',
            'stew_site_section_identity',
            array( 'key' => $key, 'type' => $meta[1] )
        );
    }

    // -- Section 2: Footer-Texte ------------------------------------------------
    add_settings_section(
        'stew_site_section_footer',
        __( 'Footer-Texte', 'stew-blocksy-child' ),
        function () {
            echo '<p style="color:#555;max-width:680px">' . wp_kses_post( __(
                'Spezielle Texte, die nur im Footer erscheinen. Beim <strong>Copyright-Text</strong> wird <code>{YEAR}</code> automatisch durch das aktuelle Jahr ersetzt.',
                'stew-blocksy-child'
            ) ) . '</p>';
        },
        'stew-site-settings'
    );

    $footer_fields = array(
        'footer_logo_text'   => array( __( 'Logo-Text', 'stew-blocksy-child' ), 'text' ),
        'footer_description' => array( __( 'Kurzbeschreibung', 'stew-blocksy-child' ), 'textarea' ),
        'footer_copyright'   => array( __( 'Copyright-Text (Platzhalter {YEAR})', 'stew-blocksy-child' ), 'text' ),
    );
    foreach ( $footer_fields as $key => $meta ) {
        add_settings_field(
            'stew_site_' . $key,
            $meta[0],
            'stew_render_site_settings_field',
            'stew-site-settings',
            'stew_site_section_footer',
            array( 'key' => $key, 'type' => $meta[1] )
        );
    }
}
add_action( 'admin_init', 'stew_register_site_settings_fields' );

/* ---------------------------------------------------------------------------
 * Render a single input/textarea field.
 * --------------------------------------------------------------------------- */
function stew_render_site_settings_field( $args ) {
    $key      = $args['key'];
    $type     = $args['type'];
    $name     = 'stew_site_' . $key;
    $defaults = stew_site_settings_defaults();
    $value    = get_option( $name, '' );
    $placeholder = isset( $defaults[ $key ] ) ? $defaults[ $key ] : '';

    if ( $type === 'textarea' ) {
        printf(
            '<textarea name="%s" id="%s" rows="3" class="large-text code" placeholder="%s">%s</textarea>',
            esc_attr( $name ),
            esc_attr( $name ),
            esc_attr( $placeholder ),
            esc_textarea( $value )
        );
    } else {
        printf(
            '<input type="%s" name="%s" id="%s" value="%s" placeholder="%s" class="regular-text" style="min-width:420px" />',
            esc_attr( $type ),
            esc_attr( $name ),
            esc_attr( $name ),
            esc_attr( $value ),
            esc_attr( $placeholder )
        );
    }
    if ( $value === '' && $placeholder !== '' ) {
        printf(
            '<p class="description" style="color:#888"><em>%s: <code>%s</code></em></p>',
            esc_html__( 'Standardwert wird verwendet, wenn leer', 'stew-blocksy-child' ),
            esc_html( $placeholder )
        );
    }
}

/* ---------------------------------------------------------------------------
 * Render the settings page itself.
 * --------------------------------------------------------------------------- */
function stew_render_site_settings_page() {
    if ( ! current_user_can( 'manage_options' ) ) {
        wp_die( esc_html__( 'Keine Berechtigung.', 'stew-blocksy-child' ) );
    }
    ?>
    <div class="wrap">
        <h1><?php esc_html_e( 'Site-Einstellungen', 'stew-blocksy-child' ); ?></h1>
        <p style="max-width:680px;font-size:14px;color:#444">
            <?php esc_html_e(
                'Hier ändern Sie Adresse, Telefonnummer, E-Mail und Öffnungszeiten — die im Footer und auf der Kontakt-Seite erscheinen. Änderungen wirken sich auf der gesamten Website aus.',
                'stew-blocksy-child'
            ); ?>
        </p>
        <form method="post" action="options.php">
            <?php
            settings_fields( 'stew_site_settings_group' );
            do_settings_sections( 'stew-site-settings' );
            submit_button( __( 'Einstellungen speichern', 'stew-blocksy-child' ) );
            ?>
        </form>
    </div>
    <?php
}
