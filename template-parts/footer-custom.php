<?php
/**
 * Template Part: Custom Footer
 *
 * 4-column footer matching the approved Lovable demo design.
 * Dark background (#0F0F0F), gold accents, Inter font.
 *
 * Content is admin-editable via:  WP-Admin → Site-Einstellungen
 * (see admin-pages/site-settings.php for the editor).
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

/* Defensive fallback: if site-settings.php hasn't loaded yet (stale OPcache
 * during a deploy window, or include path broken), define a noop helper
 * that returns empty strings. The template's `if ( $field )` guards then
 * skip the rows gracefully — never fatals. */
if ( ! function_exists( 'stew_site_setting' ) ) {
    function stew_site_setting( $_key ) { return ''; }
}

/* Read all site-wide values once. Falls back to sensible defaults if
 * a value has never been saved (see stew_site_settings_defaults()). */
$company_name    = stew_site_setting( 'company_name' );
$address_line_1  = stew_site_setting( 'address_line_1' );
$address_line_2  = stew_site_setting( 'address_line_2' );
$address_country = stew_site_setting( 'address_country' );
$phone           = stew_site_setting( 'phone' );
$email           = stew_site_setting( 'email' );

$footer_logo_text   = stew_site_setting( 'footer_logo_text' );
$footer_description = stew_site_setting( 'footer_description' );
$footer_copyright   = stew_site_setting( 'footer_copyright' );
$footer_copyright   = str_replace( '{YEAR}', date( 'Y' ), $footer_copyright );

/* Build the address block — drop any empty lines so partial fills look clean. */
$address_lines = array_filter( array( $address_line_1, $address_line_2, $address_country ) );
?>

<footer id="stew-footer" class="stew-footer" itemscope="" itemtype="https://schema.org/WPFooter">
    <div class="stew-footer__inner stew-container">
        <div class="stew-footer__grid">

            <!-- Column 1: Brand -->
            <div class="stew-footer__col stew-footer__col--brand">
                <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="stew-footer__logo"><?php echo esc_html( $footer_logo_text ); ?></a>
                <?php if ( $footer_description ) : ?>
                    <p class="stew-footer__desc"><?php echo esc_html( $footer_description ); ?></p>
                <?php endif; ?>
            </div>

            <!-- Column 2: Navigation -->
            <div class="stew-footer__col">
                <h4 class="stew-footer__heading">Navigation</h4>
                <ul class="stew-footer__links">
                    <li><a href="<?php echo esc_url( home_url( '/shop/' ) ); ?>">Shop</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/product-category/led-treiber/' ) ); ?>">LED Treiber</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/product-category/led-leuchten/' ) ); ?>">LED Leuchten</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/product-category/led-module/' ) ); ?>">LED Module</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/product-category/steuerungssysteme/' ) ); ?>">Steuerungssysteme</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/ueber-uns/' ) ); ?>">&Uuml;ber uns</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/kontakt/' ) ); ?>">Kontakt</a></li>
                </ul>
            </div>

            <!-- Column 3: Contact -->
            <div class="stew-footer__col">
                <h4 class="stew-footer__heading">Kontakt</h4>
                <ul class="stew-footer__contact">
                    <?php if ( ! empty( $address_lines ) ) : ?>
                        <li>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 10c0 6-8 12-8 12s-8-6-8-12a8 8 0 0 1 16 0Z"/><circle cx="12" cy="10" r="3"/></svg>
                            <span><?php
                                if ( $company_name ) {
                                    echo esc_html( $company_name ) . '<br>';
                                }
                                echo esc_html( implode( ', ', $address_lines ) );
                            ?></span>
                        </li>
                    <?php endif; ?>
                    <?php if ( $phone ) : ?>
                        <li>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/></svg>
                            <a href="tel:<?php echo esc_attr( preg_replace( '/\s+/', '', $phone ) ); ?>"><?php echo esc_html( $phone ); ?></a>
                        </li>
                    <?php endif; ?>
                    <?php if ( $email ) : ?>
                        <li>
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect width="20" height="16" x="2" y="4" rx="2"/><path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"/></svg>
                            <a href="mailto:<?php echo esc_attr( $email ); ?>"><?php echo esc_html( $email ); ?></a>
                        </li>
                    <?php endif; ?>
                </ul>
            </div>

            <!-- Column 4: Legal -->
            <div class="stew-footer__col">
                <h4 class="stew-footer__heading">Rechtliches</h4>
                <ul class="stew-footer__links">
                    <li><a href="<?php echo esc_url( home_url( '/impressum/' ) ); ?>">Impressum</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/datenschutz/' ) ); ?>">Datenschutz</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/agb/' ) ); ?>">AGB</a></li>
                </ul>
            </div>

        </div>
    </div>

    <!-- Bottom bar -->
    <div class="stew-footer__bottom">
        <div class="stew-container">
            <p><?php echo esc_html( $footer_copyright ); ?></p>
        </div>
    </div>
</footer>
