<?php
/**
 * Template Part: Homepage Hero
 *
 * Full-width hero section with background image, dark gradient overlay,
 * white text, and primary/secondary CTA buttons.
 *
 * ACF Fields:
 * - hero_background_image (image URL)
 * - hero_title
 * - hero_subtitle
 * - hero_cta_text
 * - hero_cta_url
 * - hero_secondary_cta_text
 * - hero_secondary_cta_url
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

$bg_image          = get_field( 'hero_background_image' );
$title             = get_field( 'hero_title' );
$subtitle          = get_field( 'hero_subtitle' );
$cta_text          = get_field( 'hero_cta_text' );
$cta_url           = get_field( 'hero_cta_url' );
$secondary_text    = get_field( 'hero_secondary_cta_text' );
$secondary_url     = get_field( 'hero_secondary_cta_url' );

if ( ! $title ) {
	return;
}

$bg_url = '';
if ( is_array( $bg_image ) && ! empty( $bg_image['url'] ) ) {
	$bg_url = $bg_image['url'];
} elseif ( is_string( $bg_image ) && $bg_image ) {
	$bg_url = $bg_image;
}

// Fallback to bundled hero image when no ACF image is set
if ( ! $bg_url ) {
	$bg_url = get_stylesheet_directory_uri() . '/assets/images/hero-lighting.jpg';
}

$hero_classes = 'stew-hero';
if ( ! $bg_url ) {
	$hero_classes .= ' stew-hero--no-image';
}
?>

<section class="<?php echo esc_attr( $hero_classes ); ?>" <?php echo $bg_url ? 'style="background-image: url(' . esc_url( $bg_url ) . ');"' : ''; ?>>
	<div class="stew-hero__overlay" aria-hidden="true"></div>

	<div class="stew-hero__content stew-container">
		<h1 class="stew-hero__title stew-animate-fade-in">
			<?php echo esc_html( $title ); ?>
		</h1>

		<?php if ( $subtitle ) : ?>
			<p class="stew-hero__subtitle stew-animate-fade-in">
				<?php echo esc_html( $subtitle ); ?>
			</p>
		<?php endif; ?>

		<div class="stew-hero__buttons stew-animate-fade-in">
			<?php if ( $cta_text && $cta_url ) : ?>
				<a href="<?php echo esc_url( $cta_url ); ?>" class="stew-btn stew-btn--gold">
					<?php echo esc_html( $cta_text ); ?>
				</a>
			<?php endif; ?>

			<?php if ( $secondary_text && $secondary_url ) : ?>
				<a href="<?php echo esc_url( $secondary_url ); ?>" class="stew-btn stew-btn--ghost">
					<?php echo esc_html( $secondary_text ); ?>
				</a>
			<?php endif; ?>
		</div>
	</div>
</section>
