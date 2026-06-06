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
			</div>

			<div class="stew-homepage-featured__products">
				<?php
				$query_args = array(
					'post_type'      => 'product',
					'posts_per_page' => $product_count,
					'post_status'    => 'publish',
					'meta_query'     => array(
						array( 'key' => '_thumbnail_id', 'compare' => 'EXISTS' ),
					),
					'tax_query'      => array(
						array(
							'taxonomy' => 'product_visibility',
							'field'    => 'name',
							'terms'    => 'featured',
							'operator' => 'IN',
						),
					),
				);
				$featured_query = new WP_Query( $query_args );

				// Fallback: if no FEATURED+image products, drop the featured filter.
				if ( ! $featured_query->have_posts() ) {
					unset( $query_args['tax_query'] );
					$featured_query = new WP_Query( $query_args );
				}

				if ( $featured_query->have_posts() ) {
					echo '<ul class="products columns-3">';
					while ( $featured_query->have_posts() ) {
						$featured_query->the_post();
						wc_get_template_part( 'content', 'product' );
					}
					echo '</ul>';
					wp_reset_postdata();
				}
				?>
			</div>

			<?php if ( $cta_text && $cta_url ) : ?>
				<div style="text-align: center; margin-top: 2.5rem;">
					<a href="<?php echo esc_url( $cta_url ); ?>" class="stew-btn stew-btn--outline">
						<?php echo esc_html( $cta_text ); ?>
					</a>
				</div>
			<?php endif; ?>

		</div>
	</div>
</section>
