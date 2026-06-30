<?php
/**
 * Template Name: Kontakt
 *
 * Contact page template for the STEW LED Lighting webshop.
 * Two-column layout: form on left, contact details on right.
 *
 * @package STEW_Blocksy_Child
 */

defined( 'ABSPATH' ) || exit;

$page_title    = get_field( 'contact_page_title' );
$page_subtitle = get_field( 'contact_page_subtitle' );

if ( ! $page_title ) {
	return;
}

$form_title     = get_field( 'contact_form_title' );
$cf7_shortcode  = get_field( 'contact_cf7_shortcode' );

/* Defensive: if site-settings.php hasn't loaded yet, define a noop so
 * this template never fatals — falls through to per-page ACF values. */
if ( ! function_exists( 'stew_site_setting' ) ) {
    function stew_site_setting( $_key ) { return ''; }
}

/* Prefer site-wide values from Site-Einstellungen so address/phone/email
 * stay in sync between this page and the footer. Fall back to per-page
 * ACF values (legacy) if Site-Einstellungen hasn't been populated yet. */
$company_name    = stew_site_setting( 'company_name' )    ?: get_field( 'company_name' );
$address_line_1  = stew_site_setting( 'address_line_1' )  ?: get_field( 'address_line_1' );
$address_line_2  = stew_site_setting( 'address_line_2' )  ?: get_field( 'address_line_2' );
$address_country = stew_site_setting( 'address_country' ) ?: get_field( 'address_country' );
$phone           = stew_site_setting( 'phone' )           ?: get_field( 'phone' );
$email           = stew_site_setting( 'email' )           ?: get_field( 'email' );
$opening_hours   = stew_site_setting( 'opening_hours' )   ?: get_field( 'opening_hours' );

get_header();
?>

<main id="primary" class="stew-contact" role="main">

	<!-- Page Header -->
	<section class="stew-contact__header stew-section">
		<div class="stew-container">
			<div class="stew-contact__header-inner">
				<h1 class="stew-contact__page-title"><?php echo esc_html( $page_title ); ?></h1>
				<?php if ( $page_subtitle ) : ?>
					<p class="stew-contact__page-subtitle"><?php echo esc_html( $page_subtitle ); ?></p>
				<?php endif; ?>
			</div>
		</div>
	</section>

	<!-- Contact Content -->
	<section class="stew-contact__content stew-section">
		<div class="stew-container">
			<div class="stew-contact__grid">

				<!-- Left Column: Form -->
				<div class="stew-contact__form-column">
					<?php if ( $form_title ) : ?>
						<h2 class="stew-contact__form-title"><?php echo esc_html( $form_title ); ?></h2>
					<?php endif; ?>

					<?php if ( $cf7_shortcode ) : ?>
						<div class="stew-contact__form-wrap">
							<?php echo do_shortcode( sanitize_text_field( $cf7_shortcode ) ); ?>
						</div>
					<?php endif; ?>
				</div>

				<!-- Right Column: Contact Details -->
				<div class="stew-contact__details-column">
					<div class="stew-contact__details-card">

						<?php if ( $company_name || $address_line_1 ) : ?>
							<div class="stew-contact__detail-group">
								<h3 class="stew-contact__detail-label"><?php esc_html_e( 'Adresse', 'stew-blocksy-child' ); ?></h3>
								<address class="stew-contact__address">
									<?php if ( $company_name ) : ?>
										<span class="stew-contact__company-name"><?php echo esc_html( $company_name ); ?></span>
									<?php endif; ?>
									<?php if ( $address_line_1 ) : ?>
										<span><?php echo esc_html( $address_line_1 ); ?></span>
									<?php endif; ?>
									<?php if ( $address_line_2 ) : ?>
										<span><?php echo esc_html( $address_line_2 ); ?></span>
									<?php endif; ?>
									<?php if ( $address_country ) : ?>
										<span><?php echo esc_html( $address_country ); ?></span>
									<?php endif; ?>
								</address>
							</div>
						<?php endif; ?>

						<?php if ( $phone ) : ?>
							<div class="stew-contact__detail-group">
								<h3 class="stew-contact__detail-label"><?php esc_html_e( 'Telefon', 'stew-blocksy-child' ); ?></h3>
								<a href="tel:<?php echo esc_attr( preg_replace( '/\s+/', '', $phone ) ); ?>" class="stew-contact__link">
									<?php echo esc_html( $phone ); ?>
								</a>
							</div>
						<?php endif; ?>

						<?php if ( $email ) : ?>
							<div class="stew-contact__detail-group">
								<h3 class="stew-contact__detail-label"><?php esc_html_e( 'E-Mail', 'stew-blocksy-child' ); ?></h3>
								<a href="mailto:<?php echo esc_attr( $email ); ?>" class="stew-contact__link">
									<?php echo esc_html( $email ); ?>
								</a>
							</div>
						<?php endif; ?>

						<?php if ( $opening_hours ) : ?>
							<div class="stew-contact__detail-group stew-contact__detail-group--hours">
								<h3 class="stew-contact__detail-label"><?php esc_html_e( 'Öffnungszeiten', 'stew-blocksy-child' ); ?></h3>
								<p class="stew-contact__hours"><?php echo esc_html( $opening_hours ); ?></p>
							</div>
						<?php endif; ?>

					</div>
				</div>

			</div>
		</div>
	</section>

</main>

<?php
get_footer();
