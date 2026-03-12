<?php
/**
 * Product Archive / Shop Page
 *
 * Native WooCommerce filtering — replaces old FacetWP-based version.
 * Uses WC filter widgets in a sidebar + standard product loop.
 *
 * @package STEW_Blocksy_Child
 * @version 1.0.0
 */

if ( ! defined( 'ABSPATH' ) ) {
    exit;
}

get_header( 'shop' );

global $wp_query;
?>

<div class="stew-container stew-section">

    <?php woocommerce_breadcrumb(); ?>

    <header class="stew-shop-header">
        <h1 class="stew-shop-header__title"><?php woocommerce_page_title(); ?></h1>
        <?php
        /**
         * Archive description / category description.
         */
        $archive_description = get_the_archive_description();
        if ( $archive_description ) :
        ?>
            <div class="stew-shop-header__description">
                <?php echo wp_kses_post( $archive_description ); ?>
            </div>
        <?php endif; ?>
    </header>

    <div class="stew-shop-layout">

        <!-- Sidebar: native WC filter widgets -->
        <aside class="stew-filter-sidebar">
            <?php if ( is_active_sidebar( 'shop-filter-sidebar' ) ) : ?>
                <?php dynamic_sidebar( 'shop-filter-sidebar' ); ?>
            <?php endif; ?>
        </aside>

        <!-- Main product grid -->
        <div class="stew-shop-content">

            <?php if ( woocommerce_product_loop() ) : ?>

                <div class="stew-shop-topbar">
                    <span class="stew-shop-topbar__count">
                        <?php
                        printf(
                            /* translators: %d: total number of products */
                            esc_html( _n( '%d Artikel', '%d Artikel', $wp_query->found_posts, 'stew' ) ),
                            (int) $wp_query->found_posts
                        );
                        ?>
                    </span>
                    <div class="stew-shop-topbar__sort">
                        <?php woocommerce_catalog_ordering(); ?>
                    </div>
                </div>

                <?php
                /**
                 * Hook: woocommerce_before_shop_loop.
                 *
                 * @hooked woocommerce_output_all_notices - 10
                 */
                do_action( 'woocommerce_before_shop_loop' );
                ?>

                <?php woocommerce_product_loop_start(); ?>

                    <?php
                    if ( wc_get_loop_prop( 'total' ) ) {
                        while ( have_posts() ) {
                            the_post();
                            wc_get_template_part( 'content', 'product' );
                        }
                    }
                    ?>

                <?php woocommerce_product_loop_end(); ?>

                <?php
                /**
                 * Hook: woocommerce_after_shop_loop.
                 *
                 * @hooked woocommerce_pagination - 10
                 */
                do_action( 'woocommerce_after_shop_loop' );
                ?>

            <?php else : ?>

                <?php
                /**
                 * Hook: woocommerce_no_products_found.
                 *
                 * @hooked wc_no_products_found - 10
                 */
                do_action( 'woocommerce_no_products_found' );
                ?>

            <?php endif; ?>

        </div><!-- .stew-shop-content -->

    </div><!-- .stew-shop-layout -->

</div><!-- .stew-container -->

<?php
get_footer( 'shop' );
