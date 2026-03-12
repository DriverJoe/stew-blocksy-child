<?php
/**
 * Template Part: Homepage CTA
 *
 * Simple centered call-to-action section with a top border.
 *
 * ACF Fields:
 * - cta_title
 * - cta_text
 * - cta_button_text
 * - cta_button_url
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

$title       = get_field( 'cta_title' );
$text        = get_field( 'cta_text' );
$button_text = get_field( 'cta_button_text' );
$button_url  = get_field( 'cta_button_url' );

if ( ! $title ) {
	return;
}
?>

<section class="stew-section stew-homepage-cta">
	<div class="stew-container">
		<div class="stew-homepage-cta__inner">

			<h2 class="stew-homepage-cta__title">
				<?php echo esc_html( $title ); ?>
			</h2>

			<?php if ( $text ) : ?>
				<p class="stew-homepage-cta__text">
					<?php echo esc_html( $text ); ?>
				</p>
			<?php endif; ?>

			<?php if ( $button_text && $button_url ) : ?>
				<a href="<?php echo esc_url( $button_url ); ?>" class="stew-btn stew-btn--gold">
					<?php echo esc_html( $button_text ); ?>
				</a>
			<?php endif; ?>

		</div>
	</div>
</section>
