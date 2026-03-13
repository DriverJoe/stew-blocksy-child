<?php
/**
 * Template Part: Homepage Featured Products
 *
 * Displays featured WooCommerce products using the [products] shortcode.
 * Falls back to recent products if none are marked as featured.
 *
 * ACF Fields:
 * - featured_section_label
 * - featured_section_title
 * - featured_products_count (default 4)
 * - featured_cta_text
 * - featured_cta_url
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

$label         = get_field( 'featured_section_label' );
$title         = get_field( 'featured_section_title' );
$product_count = get_field( 'featured_products_count' );
$cta_text      = get_field( 'featured_cta_text' );
$cta_url       = get_field( 'featured_cta_url' );

if ( ! $title ) {
	$title = 'Produkte';
}

$product_count = $product_count ? absint( $product_count ) : 4;
?>

<section class="stew-section stew-homepage-featured">
	<div class="stew-container">
		<div class="stew-homepage-featured__inner">

			<div class="stew-homepage-featured__header">
				<div class="stew-homepage-featured__heading">
					<?php if ( $label ) : ?>
						<div class="stew-section-label">
							<span class="stew-section-label__line"></span>
							<span class="stew-section-label__text"><?php echo esc_html( $label ); ?></span>
							<span class="stew-section-label__line"></span>
						</div>
					<?php endif; ?>
					<h2 class="stew-section-title"><?php echo esc_html( $title ); ?></h2>
				</div>

				<?php if ( $cta_text && $cta_url ) : ?>
					<a href="<?php echo esc_url( $cta_url ); ?>" class="stew-homepage-featured__cta-desktop stew-btn stew-btn--outline">
						<?php echo esc_html( $cta_text ); ?>
					</a>
				<?php endif; ?>
			</div>

			<div class="stew-homepage-featured__products">
				<?php
				if ( shortcode_exists( 'products' ) ) {
					// Show featured products if any exist, otherwise show recent
					$featured = wc_get_products( array( 'featured' => true, 'limit' => 1 ) );
					$visibility = ! empty( $featured ) ? ' visibility="featured"' : '';
					echo do_shortcode(
						'[products limit="' . esc_attr( $product_count ) . '" columns="4"' . $visibility . ' orderby="date"]'
					);
				}
				?>
			</div>

			<?php if ( $cta_text && $cta_url ) : ?>
				<div class="stew-homepage-featured__cta-mobile">
					<a href="<?php echo esc_url( $cta_url ); ?>" class="stew-btn stew-btn--outline">
						<?php echo esc_html( $cta_text ); ?>
					</a>
				</div>
			<?php endif; ?>

		</div>
	</div>
</section>
