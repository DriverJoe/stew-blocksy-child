<?php
/**
 * Template Name: Startseite
 *
 * Homepage template for the STEW LED Lighting webshop.
 * Assembles all homepage sections from individual template parts.
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

get_header();
?>

<main id="primary" class="stew-homepage" role="main">

	<?php get_template_part( 'template-parts/homepage', 'hero' ); ?>

	<?php get_template_part( 'template-parts/homepage', 'categories' ); ?>

	<?php get_template_part( 'template-parts/homepage', 'featured' ); ?>

	<?php get_template_part( 'template-parts/homepage', 'about' ); ?>

	<?php get_template_part( 'template-parts/homepage', 'newsletter' ); ?>

	<?php get_template_part( 'template-parts/homepage', 'cta' ); ?>

</main>

<?php
get_footer();
