<?php
/**
 * Template Part: Homepage Newsletter
 *
 * Centered newsletter signup section with muted background.
 * Uses Contact Form 7 shortcode for the form.
 *
 * ACF Fields:
 * - newsletter_title
 * - newsletter_text
 * - newsletter_cf7_shortcode
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

$title         = get_field( 'newsletter_title' );
$text          = get_field( 'newsletter_text' );
$cf7_shortcode = get_field( 'newsletter_cf7_shortcode' );

if ( ! $title ) {
	return;
}
?>

<section class="stew-section stew-homepage-newsletter">
	<div class="stew-container">
		<div class="stew-homepage-newsletter__inner">

			<div class="stew-divider" aria-hidden="true"></div>

			<h2 class="stew-homepage-newsletter__title">
				<?php echo esc_html( $title ); ?>
			</h2>

			<?php if ( $text ) : ?>
				<p class="stew-homepage-newsletter__text">
					<?php echo esc_html( $text ); ?>
				</p>
			<?php endif; ?>

			<?php if ( $cf7_shortcode ) : ?>
				<div class="stew-homepage-newsletter__form">
					<?php echo do_shortcode( sanitize_text_field( $cf7_shortcode ) ); ?>
				</div>
			<?php endif; ?>

		</div>
	</div>
</section>
