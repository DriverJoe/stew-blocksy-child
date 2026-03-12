<?php
/**
 * Template Part: Homepage Categories
 *
 * Grid of category/collection cards with images and links.
 *
 * ACF Fields (Free ACF — no repeater):
 * - collections_section_label
 * - collections_section_title
 * - card_1_title, card_1_image (array), card_1_link
 * - card_2_title, card_2_image (array), card_2_link
 * - card_3_title, card_3_image (array), card_3_link
 * - card_4_title, card_4_image (array), card_4_link
 * - card_5_title, card_5_image (array), card_5_link
 * - card_6_title, card_6_image (array), card_6_link
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

$label = get_field( 'collections_section_label' );
$title = get_field( 'collections_section_title' );

// Build cards array from individual fields (Free ACF — no repeater).
$cards = array();
for ( $i = 1; $i <= 6; $i++ ) {
	$card_title = get_field( 'card_' . $i . '_title' );
	if ( ! empty( $card_title ) ) {
		$cards[] = array(
			'title' => $card_title,
			'image' => get_field( 'card_' . $i . '_image' ),
			'link'  => get_field( 'card_' . $i . '_link' ),
		);
	}
}

if ( empty( $cards ) ) {
	return;
}
?>

<section class="stew-section stew-homepage-categories">
	<div class="stew-container">

		<?php if ( $label || $title ) : ?>
			<div class="stew-homepage-categories__heading">
				<?php if ( $label ) : ?>
					<div class="stew-section-label">
						<span class="stew-section-label__line"></span>
						<span class="stew-section-label__text"><?php echo esc_html( $label ); ?></span>
						<span class="stew-section-label__line"></span>
					</div>
				<?php endif; ?>
				<?php if ( $title ) : ?>
					<h2 class="stew-section-title"><?php echo esc_html( $title ); ?></h2>
				<?php endif; ?>
			</div>
		<?php endif; ?>

		<div class="stew-categories stew-stagger">
			<?php foreach ( $cards as $card ) :
				$card_title = $card['title'];
				$card_image = ! empty( $card['image'] ) ? $card['image'] : null;
				$card_link  = ! empty( $card['link'] ) ? $card['link'] : '';
			?>
				<a href="<?php echo esc_url( $card_link ); ?>" class="stew-category-card">
					<?php if ( $card_image ) : ?>
						<div class="stew-category-card__image">
							<img
								src="<?php echo esc_url( $card_image['url'] ); ?>"
								alt="<?php echo esc_attr( $card_image['alt'] ); ?>"
								width="<?php echo esc_attr( $card_image['width'] ); ?>"
								height="<?php echo esc_attr( $card_image['height'] ); ?>"
								loading="lazy"
							/>
							<span class="stew-category-card__overlay-name"><?php echo esc_html( $card_title ); ?></span>
						</div>
					<?php endif; ?>
					<div class="stew-category-card__info">
						<span class="stew-category-card__name"><?php echo esc_html( $card_title ); ?></span>
						<svg class="stew-category-card__arrow" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
							<path d="M5 12h14" /><path d="m12 5 7 7-7 7" />
						</svg>
					</div>
				</a>
			<?php endforeach; ?>
		</div>

	</div>
</section>
