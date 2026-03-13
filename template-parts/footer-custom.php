<?php
/**
 * Template Part: Custom Footer
 *
 * 4-column footer matching the approved Lovable demo design.
 * Dark background (#0F0F0F), gold accents, Inter font.
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

$current_year = date( 'Y' );
?>

<footer id="stew-footer" class="stew-footer" itemscope="" itemtype="https://schema.org/WPFooter">
    <div class="stew-footer__inner stew-container">
        <div class="stew-footer__grid">

            <!-- Column 1: Brand -->
            <div class="stew-footer__col stew-footer__col--brand">
                <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="stew-footer__logo">STEW.</a>
                <p class="stew-footer__desc">
                    Online Shop f&uuml;r Leuchten und Steuerger&auml;te. Professionelle LED-Beleuchtung f&uuml;r anspruchsvolle Projekte.
                </p>
            </div>

            <!-- Column 2: Navigation -->
            <div class="stew-footer__col">
                <h4 class="stew-footer__heading">Navigation</h4>
                <ul class="stew-footer__links">
                    <li><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Startseite</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/shop/' ) ); ?>">Shop</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/product-category/einbauleuchten/' ) ); ?>">Einbauleuchten</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/product-category/aufbauleuchten/' ) ); ?>">Aufbauleuchten</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/product-category/dekorative-leuchten/' ) ); ?>">Dekorative Leuchten</a></li>
                    <li><a href="<?php echo esc_url( home_url( '/product-category/led-treiber/' ) ); ?>">LED Treiber</a></li>
                </ul>
            </div>

            <!-- Column 3: Contact -->
            <div class="stew-footer__col">
                <h4 class="stew-footer__heading">Kontakt</h4>
                <ul class="stew-footer__contact">
                    <li>
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 10c0 6-8 12-8 12s-8-6-8-12a8 8 0 0 1 16 0Z"/><circle cx="12" cy="10" r="3"/></svg>
                        <span>LG Lightguide AG<br>8000 Z&uuml;rich, Schweiz</span>
                    </li>
                    <li>
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/></svg>
                        <a href="tel:+41441234567">+41 44 123 45 67</a>
                    </li>
                    <li>
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect width="20" height="16" x="2" y="4" rx="2"/><path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"/></svg>
                        <a href="mailto:info@stew.ch">info@stew.ch</a>
                    </li>
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
            <p>&copy; <?php echo esc_html( $current_year ); ?> STEW. Alle Rechte vorbehalten.</p>
        </div>
    </div>
</footer>
