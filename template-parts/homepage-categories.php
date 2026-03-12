<?php
/**
 * Template Part: Homepage Categories
 *
 * Grid of category/collection cards with images and links.
 *
 * ACF Fields:
 * - collections_section_label
 * - collections_section_title
 * - collections_cards (repeater: card_title, card_image, card_link)
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

$label = get_field( 'collections_section_label' );
$title = get_field( 'collections_section_title' );
$cards = get_field( 'collections_cards' );

if ( ! $cards ) {
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
				$card_title = ! empty( $card['card_title'] ) ? $card['card_title'] : '';
				$card_image = ! empty( $card['card_image'] ) ? $card['card_image'] : null;
				$card_link  = ! empty( $card['card_link'] ) ? $card['card_link'] : '';

				if ( ! $card_title ) {
					continue;
				}
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
