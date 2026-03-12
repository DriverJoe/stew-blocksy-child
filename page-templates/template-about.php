<?php
/**
 * Template Name: Über uns
 *
 * About page template for the STEW LED Lighting webshop.
 * Uses ACF fields for all editable content sections.
 *
 * ACF Fields (Free ACF — no repeater):
 * - value_1_title, value_1_description
 * - value_2_title, value_2_description
 * - value_3_title, value_3_description
 * - value_4_title, value_4_description
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

$page_title    = get_field( 'about_page_title' );
$page_subtitle = get_field( 'about_page_subtitle' );

if ( ! $page_title ) {
	return;
}

$story_label   = get_field( 'story_section_label' );
$story_title   = get_field( 'story_section_title' );
$story_text    = get_field( 'story_text' );
$story_image   = get_field( 'story_image' );

$values_label  = get_field( 'values_section_label' );
$values_title  = get_field( 'values_section_title' );

// Build values array from individual fields (Free ACF — no repeater).
$values_items = array();
for ( $i = 1; $i <= 4; $i++ ) {
	$value_title = get_field( 'value_' . $i . '_title' );
	if ( ! empty( $value_title ) ) {
		$values_items[] = array(
			'value_title'       => $value_title,
			'value_description' => get_field( 'value_' . $i . '_description' ),
		);
	}
}

$cta_title       = get_field( 'about_cta_title' );
$cta_text        = get_field( 'about_cta_text' );
$cta_button_text = get_field( 'about_cta_button_text' );
$cta_button_url  = get_field( 'about_cta_button_url' );

get_header();
?>

<main id="primary" class="stew-about" role="main">

	<!-- Page Header -->
	<section class="stew-about__header stew-section">
		<div class="stew-container">
			<div class="stew-about__header-inner">
				<h1 class="stew-about__page-title"><?php echo esc_html( $page_title ); ?></h1>
				<?php if ( $page_subtitle ) : ?>
					<p class="stew-about__page-subtitle"><?php echo esc_html( $page_subtitle ); ?></p>
				<?php endif; ?>
			</div>
		</div>
	</section>

	<!-- Story Section -->
	<?php if ( $story_text ) : ?>
		<section class="stew-about__story stew-section">
			<div class="stew-container">

				<?php if ( $story_label || $story_title ) : ?>
					<div class="stew-about__story-heading">
						<?php if ( $story_label ) : ?>
							<div class="stew-section-label">
								<span class="stew-section-label__line"></span>
								<span class="stew-section-label__text"><?php echo esc_html( $story_label ); ?></span>
								<span class="stew-section-label__line"></span>
							</div>
						<?php endif; ?>
						<?php if ( $story_title ) : ?>
							<h2 class="stew-section-title"><?php echo esc_html( $story_title ); ?></h2>
						<?php endif; ?>
					</div>
				<?php endif; ?>

				<div class="stew-about__story-grid">
					<div class="stew-about__story-text">
						<?php echo wp_kses_post( $story_text ); ?>
					</div>
					<?php if ( $story_image ) : ?>
						<div class="stew-about__story-image">
							<img
								src="<?php echo esc_url( $story_image['url'] ); ?>"
								alt="<?php echo esc_attr( $story_image['alt'] ); ?>"
								width="<?php echo esc_attr( $story_image['width'] ); ?>"
								height="<?php echo esc_attr( $story_image['height'] ); ?>"
								loading="lazy"
							/>
						</div>
					<?php endif; ?>
				</div>

			</div>
		</section>
	<?php endif; ?>

	<!-- Values Section -->
	<?php if ( $values_items ) : ?>
		<section class="stew-about__values stew-section">
			<div class="stew-container">

				<?php if ( $values_label || $values_title ) : ?>
					<div class="stew-about__values-heading">
						<?php if ( $values_label ) : ?>
							<div class="stew-section-label">
								<span class="stew-section-label__line"></span>
								<span class="stew-section-label__text"><?php echo esc_html( $values_label ); ?></span>
								<span class="stew-section-label__line"></span>
							</div>
						<?php endif; ?>
						<?php if ( $values_title ) : ?>
							<h2 class="stew-section-title"><?php echo esc_html( $values_title ); ?></h2>
						<?php endif; ?>
					</div>
				<?php endif; ?>

				<div class="stew-about__values-grid stew-stagger">
					<?php foreach ( $values_items as $value ) : ?>
						<div class="stew-about__value-card">
							<?php if ( ! empty( $value['value_title'] ) ) : ?>
								<h3 class="stew-about__value-title"><?php echo esc_html( $value['value_title'] ); ?></h3>
							<?php endif; ?>
							<?php if ( ! empty( $value['value_description'] ) ) : ?>
								<p class="stew-about__value-description"><?php echo esc_html( $value['value_description'] ); ?></p>
							<?php endif; ?>
						</div>
					<?php endforeach; ?>
				</div>

			</div>
		</section>
	<?php endif; ?>

	<!-- CTA Section -->
	<?php if ( $cta_title ) : ?>
		<section class="stew-about__cta stew-section">
			<div class="stew-container">
				<div class="stew-about__cta-inner">
					<h2 class="stew-about__cta-title"><?php echo esc_html( $cta_title ); ?></h2>
					<?php if ( $cta_text ) : ?>
						<p class="stew-about__cta-text"><?php echo esc_html( $cta_text ); ?></p>
					<?php endif; ?>
					<?php if ( $cta_button_text && $cta_button_url ) : ?>
						<a href="<?php echo esc_url( $cta_button_url ); ?>" class="stew-btn stew-btn--gold">
							<?php echo esc_html( $cta_button_text ); ?>
						</a>
					<?php endif; ?>
				</div>
			</div>
		</section>
	<?php endif; ?>

</main>

<?php
get_footer();
