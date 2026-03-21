<?php
/**
 * Template Name: Über uns
 *
 * About page template for the STEW LED Lighting webshop.
 * Features a hero banner, story section, values grid, and CTA.
 *
 * ACF Fields (Free ACF — no repeater):
 * - about_hero_image, about_page_title, about_page_subtitle
 * - story_section_label, story_section_title, story_text, story_image
 * - values_section_label, values_section_title
 * - value_1_title, value_1_description ... value_4_title, value_4_description
 * - about_cta_title, about_cta_text, about_cta_button_text, about_cta_button_url
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

$page_title    = get_field( 'about_page_title' );
$page_subtitle = get_field( 'about_page_subtitle' );
$hero_image    = get_field( 'about_hero_image' );

if ( ! $page_title ) {
	$page_title = get_the_title();
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

// Hero image URL
$hero_url = '';
if ( is_array( $hero_image ) && ! empty( $hero_image['url'] ) ) {
	$hero_url = $hero_image['url'];
} elseif ( is_string( $hero_image ) && $hero_image ) {
	$hero_url = $hero_image;
}
if ( ! $hero_url ) {
	$hero_url = get_stylesheet_directory_uri() . '/assets/images/hero-lighting.jpg';
}

get_header();
?>

<main id="primary" class="stew-about" role="main">

	<!-- Hero Banner -->
	<section class="stew-hero stew-hero--about" style="background-image: url(<?php echo esc_url( $hero_url ); ?>);">
		<div class="stew-hero__overlay" aria-hidden="true"></div>
		<div class="stew-hero__content stew-container">
			<h1 class="stew-hero__title stew-animate-fade-in">
				<?php echo esc_html( $page_title ); ?>
			</h1>
			<?php if ( $page_subtitle ) : ?>
				<p class="stew-hero__subtitle stew-animate-fade-in">
					<?php echo esc_html( $page_subtitle ); ?>
				</p>
			<?php endif; ?>
		</div>
	</section>

	<!-- Story Section -->
	<?php if ( $story_text ) : ?>
		<section class="stew-about__story stew-section">
			<div class="stew-container">

				<?php if ( $story_label || $story_title ) : ?>
					<div class="stew-about__story-heading" style="text-align: center; margin-bottom: 3rem;">
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

				<div class="stew-about-grid">
					<div class="stew-about__story-text">
						<?php echo wp_kses_post( $story_text ); ?>
					</div>
					<?php if ( $story_image ) : ?>
						<?php
						$img_url = is_array( $story_image ) ? $story_image['url'] : $story_image;
						$img_alt = is_array( $story_image ) && ! empty( $story_image['alt'] ) ? $story_image['alt'] : 'STEW';
						?>
						<div class="stew-about__story-image">
							<img
								src="<?php echo esc_url( $img_url ); ?>"
								alt="<?php echo esc_attr( $img_alt ); ?>"
								loading="lazy"
								style="width: 100%; height: auto; border-radius: 6px;"
							/>
						</div>
					<?php endif; ?>
				</div>

			</div>
		</section>
	<?php endif; ?>

	<!-- Values Section -->
	<?php if ( $values_items ) : ?>
		<section class="stew-about__values stew-section" style="background: var(--stew-off-white, #F8F7F5);">
			<div class="stew-container">

				<?php if ( $values_label || $values_title ) : ?>
					<div class="stew-about__values-heading" style="text-align: center; margin-bottom: 3rem;">
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

				<div class="stew-usp-grid">
					<?php foreach ( $values_items as $value ) : ?>
						<div class="stew-usp-card" style="background: #FFFFFF; padding: 2rem; border-radius: 6px;">
							<?php if ( ! empty( $value['value_title'] ) ) : ?>
								<h3 style="font-size: 1.25rem; font-weight: 600; margin-bottom: 0.75rem; color: var(--stew-text, #1A1A1A);"><?php echo esc_html( $value['value_title'] ); ?></h3>
							<?php endif; ?>
							<?php if ( ! empty( $value['value_description'] ) ) : ?>
								<p style="font-size: 0.9375rem; line-height: 1.7; color: var(--stew-text-muted, #737373); margin: 0;"><?php echo esc_html( $value['value_description'] ); ?></p>
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
			<div class="stew-container" style="text-align: center; max-width: 700px;">
				<h2 style="font-size: 2rem; font-weight: 600; margin-bottom: 1rem; color: var(--stew-text, #1A1A1A);"><?php echo esc_html( $cta_title ); ?></h2>
				<?php if ( $cta_text ) : ?>
					<p style="font-size: 1.0625rem; line-height: 1.7; color: var(--stew-text-muted, #737373); margin-bottom: 2rem;"><?php echo esc_html( $cta_text ); ?></p>
				<?php endif; ?>
				<?php if ( $cta_button_text && $cta_button_url ) : ?>
					<a href="<?php echo esc_url( $cta_button_url ); ?>" class="stew-btn stew-btn--gold">
						<?php echo esc_html( $cta_button_text ); ?>
					</a>
				<?php endif; ?>
			</div>
		</section>
	<?php endif; ?>

</main>

<?php
get_footer();
