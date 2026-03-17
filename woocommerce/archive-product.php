<?php
/**
 * The Template for displaying product archives, including the main shop page.
 *
 * Custom layout: left filter sidebar + product grid.
 * Uses native WooCommerce attribute filtering via layered nav widgets.
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

get_header( 'shop' );
?>

<div class="stew-shop-layout">

	<?php /* ── Left Sidebar: Filters ── */ ?>
	<aside class="stew-shop-sidebar" id="shop-filters">

		<div class="stew-shop-sidebar__header">
			<h3 class="stew-shop-sidebar__title">Filter</h3>
			<?php
			// Show "Reset filters" link when filters are active
			if ( ! empty( $_GET ) ) :
				$shop_url = get_permalink( wc_get_page_id( 'shop' ) );
				if ( is_product_category() ) {
					$shop_url = get_term_link( get_queried_object() );
				}
			?>
				<a href="<?php echo esc_url( $shop_url ); ?>" class="stew-shop-sidebar__reset">Zurücksetzen</a>
			<?php endif; ?>
		</div>

		<?php /* Category filter */ ?>
		<div class="stew-filter-group">
			<h4 class="stew-filter-title">Kategorie</h4>
			<?php
			the_widget( 'WC_Widget_Product_Categories', array(
				'title'        => '',
				'orderby'      => 'name',
				'count'        => 1,
				'hierarchical' => 1,
				'hide_empty'   => 1,
			) );
			?>
		</div>

		<?php
		// Attribute filters — use WooCommerce's built-in layered nav
		$filter_attributes = array(
			'betriebsart'  => 'Betriebsart',
			'leistung'     => 'Leistung',
			'dimmung'      => 'Dimmung',
			'ausgangsstrom' => 'Ausgangsstrom',
			'hersteller'   => 'Hersteller',
			'schutzart'    => 'Schutzart',
			'bauform'      => 'Bauform',
		);

		foreach ( $filter_attributes as $slug => $label ) :
			$taxonomy = 'pa_' . $slug;
			$terms    = get_terms( array(
				'taxonomy'   => $taxonomy,
				'hide_empty' => true,
			) );
			if ( empty( $terms ) || is_wp_error( $terms ) ) {
				continue;
			}

			$current_filter = isset( $_GET[ 'filter_' . $slug ] ) ? explode( ',', sanitize_text_field( wp_unslash( $_GET[ 'filter_' . $slug ] ) ) ) : array();
		?>
			<div class="stew-filter-group">
				<h4 class="stew-filter-title"><?php echo esc_html( $label ); ?></h4>
				<ul class="stew-filter-list">
					<?php foreach ( $terms as $term ) :
						$is_active   = in_array( $term->slug, $current_filter, true );
						$filter_key  = 'filter_' . $slug;
						$query_type  = 'query_type_' . $slug;

						if ( $is_active ) {
							$new_filter = array_diff( $current_filter, array( $term->slug ) );
						} else {
							$new_filter = array_merge( $current_filter, array( $term->slug ) );
						}

						$current_url = remove_query_arg( array( $filter_key, $query_type ) );
						if ( ! empty( $new_filter ) ) {
							$filter_url = add_query_arg( array(
								$filter_key => implode( ',', $new_filter ),
								$query_type => 'or',
							), $current_url );
						} else {
							$filter_url = $current_url;
						}
					?>
						<li class="stew-filter-item<?php echo $is_active ? ' stew-filter-item--active' : ''; ?>">
							<a href="<?php echo esc_url( $filter_url ); ?>" class="stew-filter-link">
								<span class="stew-filter-check"><?php echo $is_active ? '✓' : ''; ?></span>
								<span class="stew-filter-label"><?php echo esc_html( $term->name ); ?></span>
								<span class="stew-filter-count">(<?php echo esc_html( $term->count ); ?>)</span>
							</a>
						</li>
					<?php endforeach; ?>
				</ul>
			</div>
		<?php endforeach; ?>

		<?php /* Price filter */ ?>
		<div class="stew-filter-group">
			<h4 class="stew-filter-title">Preis</h4>
			<?php the_widget( 'WC_Widget_Price_Filter', array( 'title' => '' ) ); ?>
		</div>

	</aside>

	<?php /* ── Main Content: Product Grid ── */ ?>
	<main class="stew-shop-main">

		<div class="stew-shop-topbar">
			<?php if ( apply_filters( 'woocommerce_show_page_title', true ) ) : ?>
				<h1 class="stew-shop-topbar__title"><?php woocommerce_page_title(); ?></h1>
			<?php endif; ?>

			<div class="stew-shop-topbar__meta">
				<?php woocommerce_result_count(); ?>
				<?php woocommerce_catalog_ordering(); ?>
			</div>
		</div>

		<?php woocommerce_output_all_notices(); ?>

		<?php if ( woocommerce_product_loop() ) : ?>

			<?php do_action( 'woocommerce_before_shop_loop' ); ?>

			<?php woocommerce_product_loop_start(); ?>
				<?php while ( have_posts() ) : the_post(); ?>
					<?php wc_get_template_part( 'content', 'product' ); ?>
				<?php endwhile; ?>
			<?php woocommerce_product_loop_end(); ?>

			<?php do_action( 'woocommerce_after_shop_loop' ); ?>

		<?php else : ?>

			<div class="stew-shop-empty">
				<p>Keine Produkte gefunden. Bitte passen Sie die Filter an.</p>
				<?php
				$shop_url = get_permalink( wc_get_page_id( 'shop' ) );
				?>
				<a href="<?php echo esc_url( $shop_url ); ?>" class="stew-btn stew-btn--outline">Alle Produkte anzeigen</a>
			</div>

		<?php endif; ?>

		<?php /* Mobile filter toggle */ ?>
		<button class="stew-shop-filter-toggle" id="filter-toggle" aria-label="Filter anzeigen">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polygon points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3"/></svg>
			Filter
		</button>

	</main>

</div>

<?php
get_footer( 'shop' );
