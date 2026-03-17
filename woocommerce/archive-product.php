<?php
/**
 * The Template for displaying product archives, including the main shop page.
 *
 * Custom layout: left filter sidebar + product grid.
 * Collapsible filter groups with attribute filtering via URL params.
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

get_header( 'shop' );

// Filters that start expanded (index-based: 0 = Kategorie, 1 = Betriebsart)
$expanded_by_default = array( 'kategorie', 'betriebsart' );
?>

<div class="stew-shop-layout">

	<?php /* ── Left Sidebar: Filters ── */ ?>
	<aside class="stew-shop-sidebar" id="shop-filters">

		<div class="stew-shop-sidebar__header">
			<h3 class="stew-shop-sidebar__title">Filter</h3>
			<?php
			if ( ! empty( $_GET ) ) :
				$shop_url = get_permalink( wc_get_page_id( 'shop' ) );
				if ( is_product_category() ) {
					$shop_url = get_term_link( get_queried_object() );
				}
			?>
				<a href="<?php echo esc_url( $shop_url ); ?>" class="stew-shop-sidebar__reset">Zurücksetzen</a>
			<?php endif; ?>
		</div>

		<?php /* Category filter — starts open */ ?>
		<div class="stew-filter-group" data-filter="kategorie">
			<button class="stew-filter-toggle" aria-expanded="true" type="button">
				<span class="stew-filter-toggle__label">Kategorie</span>
				<svg class="stew-filter-toggle__icon" width="12" height="12" viewBox="0 0 12 12"><polyline points="2 4 6 8 10 4" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
			</button>
			<div class="stew-filter-body">
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
		</div>

		<?php
		$filter_attributes = array(
			'betriebsart'   => 'Betriebsart',
			'leistung'      => 'Leistung',
			'dimmung'       => 'Dimmung',
			'ausgangsstrom'  => 'Ausgangsstrom',
			'hersteller'    => 'Hersteller',
			'schutzart'     => 'Schutzart',
			'bauform'       => 'Bauform',
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

			$current_filter = isset( $_GET[ 'filter_' . $slug ] )
				? explode( ',', sanitize_text_field( wp_unslash( $_GET[ 'filter_' . $slug ] ) ) )
				: array();

			// Expand if has active filter or is in default-open list
			$is_open = ! empty( $current_filter ) || in_array( $slug, $expanded_by_default, true );
		?>
			<div class="stew-filter-group" data-filter="<?php echo esc_attr( $slug ); ?>">
				<button class="stew-filter-toggle" aria-expanded="<?php echo $is_open ? 'true' : 'false'; ?>" type="button">
					<span class="stew-filter-toggle__label"><?php echo esc_html( $label ); ?></span>
					<?php if ( ! empty( $current_filter ) ) : ?>
						<span class="stew-filter-toggle__badge"><?php echo count( $current_filter ); ?></span>
					<?php endif; ?>
					<svg class="stew-filter-toggle__icon" width="12" height="12" viewBox="0 0 12 12"><polyline points="2 4 6 8 10 4" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
				</button>
				<div class="stew-filter-body"<?php echo ! $is_open ? ' style="display:none"' : ''; ?>>
					<ul class="stew-filter-list">
						<?php foreach ( $terms as $term ) :
							$is_active  = in_array( $term->slug, $current_filter, true );
							$filter_key = 'filter_' . $slug;
							$query_type = 'query_type_' . $slug;

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
			</div>
		<?php endforeach; ?>

		<?php /* Price filter — starts collapsed */ ?>
		<div class="stew-filter-group" data-filter="preis">
			<button class="stew-filter-toggle" aria-expanded="false" type="button">
				<span class="stew-filter-toggle__label">Preis</span>
				<svg class="stew-filter-toggle__icon" width="12" height="12" viewBox="0 0 12 12"><polyline points="2 4 6 8 10 4" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
			</button>
			<div class="stew-filter-body" style="display:none">
				<?php the_widget( 'WC_Widget_Price_Filter', array( 'title' => '' ) ); ?>
			</div>
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
				<?php $shop_url = get_permalink( wc_get_page_id( 'shop' ) ); ?>
				<a href="<?php echo esc_url( $shop_url ); ?>" class="stew-btn stew-btn--outline">Alle Produkte anzeigen</a>
			</div>

		<?php endif; ?>

		<button class="stew-shop-filter-toggle" id="filter-toggle" aria-label="Filter anzeigen">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polygon points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3"/></svg>
			Filter
		</button>

	</main>

</div>

<?php
get_footer( 'shop' );
