<?php
/**
 * Template Part: Homepage About
 *
 * Two-column layout: text content on the left, image on the right (desktop).
 * Stacks vertically on mobile.
 *
 * ACF Fields:
 * - about_section_label
 * - about_section_title
 * - about_text (wysiwyg)
 * - about_image
 * - about_cta_text
 * - about_cta_url
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

$label    = get_field( 'about_section_label' );
$title    = get_field( 'about_section_title' );
$text     = get_field( 'about_text' );
$image    = get_field( 'about_image' );
$cta_text = get_field( 'about_cta_text' );
$cta_url  = get_field( 'about_cta_url' );

if ( ! $title && ! $text ) {
	return;
}
?>

<section class="stew-section stew-homepage-about">
	<div class="stew-container">
		<div class="stew-homepage-about__grid">

			<!-- Text Column -->
			<div class="stew-homepage-about__text">
				<?php if ( $label ) : ?>
					<div class="stew-section-label stew-section-label--left">
						<span class="stew-section-label__line"></span>
						<span class="stew-section-label__text"><?php echo esc_html( $label ); ?></span>
					</div>
				<?php endif; ?>

				<?php if ( $title ) : ?>
					<h2 class="stew-section-title"><?php echo esc_html( $title ); ?></h2>
				<?php endif; ?>

				<?php if ( $text ) : ?>
					<div class="stew-homepage-about__body">
						<?php echo wp_kses_post( $text ); ?>
					</div>
				<?php endif; ?>

				<?php if ( $cta_text && $cta_url ) : ?>
					<a href="<?php echo esc_url( $cta_url ); ?>" class="stew-btn stew-btn--outline">
						<?php echo esc_html( $cta_text ); ?>
					</a>
				<?php endif; ?>
			</div>

			<!-- Image Column -->
			<?php if ( $image ) : ?>
				<div class="stew-homepage-about__image">
					<img
						src="<?php echo esc_url( $image['url'] ); ?>"
						alt="<?php echo esc_attr( $image['alt'] ); ?>"
						width="<?php echo esc_attr( $image['width'] ); ?>"
						height="<?php echo esc_attr( $image['height'] ); ?>"
						loading="lazy"
					/>
				</div>
			<?php endif; ?>

		</div>
	</div>
</section>
