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

// FacetWP switchover — see stew_use_facetwp() in functions.php. False until
// Ronny signs off, in which case everything below behaves exactly as before.
$stew_facetwp = function_exists( 'stew_use_facetwp' ) && stew_use_facetwp();

// Facet set agreed with Ronny (vault: STEW Filters.md §85). Order follows his
// own Filter sheet, with the quantitative facets after it.
$stew_facets = array(
	'verfuegbarkeit'   => 'Verfügbarkeit',
	'dimmung'          => 'Dimmung',
	'strom'            => 'Strom (mA)',
	'schutzart'        => 'Schutzart',
	'bauform'          => 'Bauform',
	'leistung'         => 'Leistung (W)',
	'ausgangsspannung' => 'Ausgangsspannung (V)',
	'betriebsart'      => 'Betriebsart',
	'hersteller'       => 'Hersteller',
);
$stew_facets_open = array( 'verfuegbarkeit', 'dimmung', 'strom' );
?>

<div class="stew-shop-layout">

	<?php /* ── Left Sidebar: Filters ── */ ?>
	<aside class="stew-shop-sidebar" id="shop-filters">

		<div class="stew-shop-sidebar__header">
			<h3 class="stew-shop-sidebar__title">Filter</h3>
			<?php if ( $stew_facetwp ) : ?>
				<?php /* FacetWP's own reset facet: hides itself when nothing is selected
				         and clears without a page load. The server-rendered link below
				         can't do either — facet changes only touch the URL via pushState,
				         so a PHP-side `! empty( $_GET )` check never sees them. */ ?>
				<?php echo do_shortcode( '[facetwp facet="zuruecksetzen"]' ); ?>
			<?php elseif ( ! empty( $_GET ) ) : ?>
				<?php
				$shop_url = get_permalink( wc_get_page_id( 'shop' ) );
				if ( is_product_category() ) {
					$shop_url = get_term_link( get_queried_object() );
				}
				?>
				<a href="<?php echo esc_url( $shop_url ); ?>" class="stew-shop-sidebar__reset">Zurücksetzen</a>
			<?php endif; ?>
			<?php /* Mobile only. The drawer had no way out: the floating Filter pill is
			         centred under the 300px panel and sits below it in the stacking
			         order, so once open it can't be tapped. */ ?>
			<button class="stew-shop-sidebar__close" id="filter-close" type="button" aria-label="Filter schliessen">&times;</button>
		</div>

		<?php if ( $stew_facetwp ) : ?>

			<?php
			/* Same group markup as below, so the existing collapse CSS/JS applies
			   unchanged — only the option list inside comes from FacetWP. */
			foreach ( $stew_facets as $stew_facet => $stew_label ) :
				$stew_open = in_array( $stew_facet, $stew_facets_open, true );
			?>
				<div class="stew-filter-group" data-filter="<?php echo esc_attr( $stew_facet ); ?>">
					<button class="stew-filter-toggle" aria-expanded="<?php echo $stew_open ? 'true' : 'false'; ?>" type="button">
						<span class="stew-filter-toggle__label"><?php echo esc_html( $stew_label ); ?></span>
						<svg class="stew-filter-toggle__icon" width="12" height="12" viewBox="0 0 12 12"><polyline points="2 4 6 8 10 4" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
					</button>
					<div class="stew-filter-body"<?php echo ! $stew_open ? ' style="display:none"' : ''; ?>>
						<?php echo do_shortcode( '[facetwp facet="' . $stew_facet . '"]' ); ?>
					</div>
				</div>
			<?php endforeach; ?>

		<?php else : ?>

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

		// Check if any filters are active (to decide whether to compute filtered counts)
		$has_active_filters = false;
		foreach ( array_keys( $filter_attributes ) as $s ) {
			if ( ! empty( $_GET[ 'filter_' . $s ] ) ) {
				$has_active_filters = true;
				break;
			}
		}

		foreach ( $filter_attributes as $slug => $label ) :
			$taxonomy = 'pa_' . $slug;
			$terms    = get_terms( array(
				'taxonomy'   => $taxonomy,
				'hide_empty' => true,
			) );
			if ( empty( $terms ) || is_wp_error( $terms ) ) {
				continue;
			}

			// Get filtered counts when filters are active
			$filtered_counts = array();
			if ( $has_active_filters && function_exists( 'stew_get_filtered_term_counts' ) ) {
				$filtered_counts = stew_get_filtered_term_counts( $taxonomy, array_keys( $filter_attributes ) );
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
							// Use filtered count if available, otherwise global count
							$display_count = isset( $filtered_counts[ $term->slug ] ) ? $filtered_counts[ $term->slug ] : $term->count;

							$is_active  = in_array( $term->slug, $current_filter, true );
							$filter_key = 'filter_' . $slug;
							$query_type = 'query_type_' . $slug;

							// Hide terms with 0 results (unless currently active)
							if ( $display_count === 0 && ! $is_active && $has_active_filters ) {
								continue;
							}

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
									<span class="stew-filter-count">(<?php echo esc_html( $display_count ); ?>)</span>
								</a>
							</li>
						<?php endforeach; ?>
					</ul>
				</div>
			</div>
		<?php endforeach; ?>

		<?php endif; ?>

		<?php /* Preis filter removed 2026-07-07 per Ronny — "we do not need price as a filter". */ ?>

		<?php /* Mobile only: sticks to the bottom of the drawer so the way back to the
		         products is always in reach, however far down the filters you are.
		         The count is filled in by JS from the live facet total. */ ?>
		<div class="stew-shop-sidebar__apply-bar">
			<button class="stew-shop-sidebar__apply" id="filter-apply" type="button">Ergebnisse anzeigen</button>
		</div>

	</aside>

	<?php /* Tap-outside-to-close for the mobile drawer. */ ?>
	<div class="stew-shop-backdrop" id="filter-backdrop" hidden></div>

	<?php /* ── Main Content: Product Grid ── */ ?>
	<main class="stew-shop-main">

		<div class="stew-shop-topbar">
			<?php if ( apply_filters( 'woocommerce_show_page_title', true ) ) : ?>
				<h1 class="stew-shop-topbar__title"><?php woocommerce_page_title(); ?></h1>
			<?php endif; ?>

			<div class="stew-shop-topbar__meta">
				<?php
				// Kept outside .facetwp-template on purpose: WooCommerce binds the
				// orderby <select> directly, so re-rendering it would kill sorting.
				// FacetWP refreshes its own facets anywhere on the page, which is
				// why the result count is a pager facet here rather than
				// woocommerce_result_count().
				if ( $stew_facetwp ) {
					echo do_shortcode( '[facetwp facet="ergebnisse"]' );
				} else {
					woocommerce_result_count();
				}
				?>
				<?php woocommerce_catalog_ordering(); ?>
			</div>
		</div>

		<?php woocommerce_output_all_notices(); ?>

		<?php /* FacetWP refreshes whatever sits inside .facetwp-template. */ ?>
		<?php if ( $stew_facetwp ) : ?><div class="facetwp-template"><?php endif; ?>

		<?php if ( woocommerce_product_loop() ) : ?>

			<?php do_action( 'woocommerce_before_shop_loop' ); ?>

			<?php woocommerce_product_loop_start(); ?>
				<?php while ( have_posts() ) : the_post(); ?>
					<?php wc_get_template_part( 'content', 'product' ); ?>
				<?php endwhile; ?>
			<?php woocommerce_product_loop_end(); ?>

			<?php do_action( 'woocommerce_after_shop_loop' ); ?>

		<?php else : ?>

			<?php
			$rendered_empty_notice = false;
			if ( is_product_category() ) {
				$cat_obj = get_queried_object();
				if ( $cat_obj && 0 === (int) $cat_obj->count ) {
					echo '<div class="stew-empty-category-notice">';
					echo '<h3>' . esc_html__( 'Diese Kategorie ist derzeit leer', 'stew-blocksy-child' ) . '</h3>';
					echo '<p>' . esc_html__( 'Wir arbeiten daran — schauen Sie bald wieder vorbei oder durchsuchen Sie alle ', 'stew-blocksy-child' );
					echo '<a href="' . esc_url( get_term_link( 'led-treiber', 'product_cat' ) ) . '">' . esc_html__( 'LED Treiber', 'stew-blocksy-child' ) . '</a>.';
					echo '</p>';
					echo '</div>';
					$rendered_empty_notice = true;
				}
			}
			if ( ! $rendered_empty_notice ) :
			?>
			<div class="stew-shop-empty">
				<p>Keine Produkte gefunden. Bitte passen Sie die Filter an.</p>
				<?php $shop_url = get_permalink( wc_get_page_id( 'shop' ) ); ?>
				<a href="<?php echo esc_url( $shop_url ); ?>" class="stew-btn stew-btn--outline">Alle Produkte anzeigen</a>
			</div>
			<?php endif; ?>

		<?php endif; ?>

		<?php if ( $stew_facetwp ) : ?></div><?php endif; ?>

		<button class="stew-shop-filter-toggle" id="filter-toggle" aria-label="Filter anzeigen">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polygon points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3"/></svg>
			Filter
		</button>

	</main>

</div>

<?php
get_footer( 'shop' );
