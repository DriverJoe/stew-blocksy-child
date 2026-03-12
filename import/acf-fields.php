<?php
/**
 * ACF Local Field Groups Registration
 *
 * Registers all ACF field groups via acf_add_local_field_group().
 * Compatible with ACF FREE 6.7.1 - uses only basic field types:
 * text, textarea, image, url, number, email, wysiwyg, select, tab.
 *
 * No repeater, no options pages, no flexible content, no gallery fields.
 *
 * @package STEW Blocksy Child
 */

if ( ! defined( 'ABSPATH' ) ) {
    exit;
}

add_action( 'acf/init', 'stew_register_acf_field_groups' );

function stew_register_acf_field_groups() {

    // Bail if ACF is not active.
    if ( ! function_exists( 'acf_add_local_field_group' ) ) {
        return;
    }

    // =========================================================================
    // 1. Homepage (group_homepage)
    // =========================================================================
    acf_add_local_field_group( array(
        'key'                   => 'group_homepage',
        'title'                 => 'Homepage Inhalte',
        'fields'                => array(

            // -----------------------------------------------------------------
            // Tab: Hero Banner
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_hp_tab_hero',
                'label'     => 'Hero Banner',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_hero_background_image',
                'label'         => 'Hero Hintergrundbild',
                'name'          => 'hero_background_image',
                'type'          => 'image',
                'return_format' => 'url',
                'preview_size'  => 'medium',
                'library'       => 'all',
            ),
            array(
                'key'         => 'field_hero_title',
                'label'       => 'Hero Titel',
                'name'        => 'hero_title',
                'type'        => 'text',
                'required'    => 1,
                'placeholder' => 'Professionelle LED-Beleuchtung...',
            ),
            array(
                'key'  => 'field_hero_subtitle',
                'label' => 'Hero Untertitel',
                'name'  => 'hero_subtitle',
                'type'  => 'textarea',
                'rows'  => 3,
            ),
            array(
                'key'           => 'field_hero_cta_text',
                'label'         => 'Hero CTA Text',
                'name'          => 'hero_cta_text',
                'type'          => 'text',
                'default_value' => 'Katalog ansehen',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_hero_cta_url',
                'label'         => 'Hero CTA URL',
                'name'          => 'hero_cta_url',
                'type'          => 'url',
                'default_value' => '/shop/',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'     => 'field_hero_secondary_cta_text',
                'label'   => 'Hero Sekundaerer CTA Text',
                'name'    => 'hero_secondary_cta_text',
                'type'    => 'text',
                'wrapper' => array( 'width' => '50' ),
            ),
            array(
                'key'     => 'field_hero_secondary_cta_url',
                'label'   => 'Hero Sekundaere CTA URL',
                'name'    => 'hero_secondary_cta_url',
                'type'    => 'url',
                'wrapper' => array( 'width' => '50' ),
            ),

            // -----------------------------------------------------------------
            // Tab: Kollektionen
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_hp_tab_collections',
                'label'     => 'Kollektionen',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_collections_section_label',
                'label'         => 'Kollektionen Bereichslabel',
                'name'          => 'collections_section_label',
                'type'          => 'text',
                'default_value' => 'KOLLEKTION',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_collections_section_title',
                'label'         => 'Kollektionen Bereichstitel',
                'name'          => 'collections_section_title',
                'type'          => 'text',
                'default_value' => 'Nach Kollektion einkaufen',
                'wrapper'       => array( 'width' => '50' ),
            ),

            // Card 1
            array(
                'key'     => 'field_card_1_title',
                'label'   => 'Karte 1 Titel',
                'name'    => 'card_1_title',
                'type'    => 'text',
                'wrapper' => array( 'width' => '33' ),
            ),
            array(
                'key'           => 'field_card_1_image',
                'label'         => 'Karte 1 Bild',
                'name'          => 'card_1_image',
                'type'          => 'image',
                'return_format' => 'array',
                'preview_size'  => 'medium',
                'library'       => 'all',
                'wrapper'       => array( 'width' => '33' ),
            ),
            array(
                'key'     => 'field_card_1_link',
                'label'   => 'Karte 1 Link',
                'name'    => 'card_1_link',
                'type'    => 'url',
                'wrapper' => array( 'width' => '33' ),
            ),

            // Card 2
            array(
                'key'     => 'field_card_2_title',
                'label'   => 'Karte 2 Titel',
                'name'    => 'card_2_title',
                'type'    => 'text',
                'wrapper' => array( 'width' => '33' ),
            ),
            array(
                'key'           => 'field_card_2_image',
                'label'         => 'Karte 2 Bild',
                'name'          => 'card_2_image',
                'type'          => 'image',
                'return_format' => 'array',
                'preview_size'  => 'medium',
                'library'       => 'all',
                'wrapper'       => array( 'width' => '33' ),
            ),
            array(
                'key'     => 'field_card_2_link',
                'label'   => 'Karte 2 Link',
                'name'    => 'card_2_link',
                'type'    => 'url',
                'wrapper' => array( 'width' => '33' ),
            ),

            // Card 3
            array(
                'key'     => 'field_card_3_title',
                'label'   => 'Karte 3 Titel',
                'name'    => 'card_3_title',
                'type'    => 'text',
                'wrapper' => array( 'width' => '33' ),
            ),
            array(
                'key'           => 'field_card_3_image',
                'label'         => 'Karte 3 Bild',
                'name'          => 'card_3_image',
                'type'          => 'image',
                'return_format' => 'array',
                'preview_size'  => 'medium',
                'library'       => 'all',
                'wrapper'       => array( 'width' => '33' ),
            ),
            array(
                'key'     => 'field_card_3_link',
                'label'   => 'Karte 3 Link',
                'name'    => 'card_3_link',
                'type'    => 'url',
                'wrapper' => array( 'width' => '33' ),
            ),

            // Card 4
            array(
                'key'     => 'field_card_4_title',
                'label'   => 'Karte 4 Titel',
                'name'    => 'card_4_title',
                'type'    => 'text',
                'wrapper' => array( 'width' => '33' ),
            ),
            array(
                'key'           => 'field_card_4_image',
                'label'         => 'Karte 4 Bild',
                'name'          => 'card_4_image',
                'type'          => 'image',
                'return_format' => 'array',
                'preview_size'  => 'medium',
                'library'       => 'all',
                'wrapper'       => array( 'width' => '33' ),
            ),
            array(
                'key'     => 'field_card_4_link',
                'label'   => 'Karte 4 Link',
                'name'    => 'card_4_link',
                'type'    => 'url',
                'wrapper' => array( 'width' => '33' ),
            ),

            // Card 5
            array(
                'key'     => 'field_card_5_title',
                'label'   => 'Karte 5 Titel',
                'name'    => 'card_5_title',
                'type'    => 'text',
                'wrapper' => array( 'width' => '33' ),
            ),
            array(
                'key'           => 'field_card_5_image',
                'label'         => 'Karte 5 Bild',
                'name'          => 'card_5_image',
                'type'          => 'image',
                'return_format' => 'array',
                'preview_size'  => 'medium',
                'library'       => 'all',
                'wrapper'       => array( 'width' => '33' ),
            ),
            array(
                'key'     => 'field_card_5_link',
                'label'   => 'Karte 5 Link',
                'name'    => 'card_5_link',
                'type'    => 'url',
                'wrapper' => array( 'width' => '33' ),
            ),

            // Card 6
            array(
                'key'     => 'field_card_6_title',
                'label'   => 'Karte 6 Titel',
                'name'    => 'card_6_title',
                'type'    => 'text',
                'wrapper' => array( 'width' => '33' ),
            ),
            array(
                'key'           => 'field_card_6_image',
                'label'         => 'Karte 6 Bild',
                'name'          => 'card_6_image',
                'type'          => 'image',
                'return_format' => 'array',
                'preview_size'  => 'medium',
                'library'       => 'all',
                'wrapper'       => array( 'width' => '33' ),
            ),
            array(
                'key'     => 'field_card_6_link',
                'label'   => 'Karte 6 Link',
                'name'    => 'card_6_link',
                'type'    => 'url',
                'wrapper' => array( 'width' => '33' ),
            ),

            // -----------------------------------------------------------------
            // Tab: Ausgewaehlte Produkte
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_hp_tab_featured',
                'label'     => 'Ausgewaehlte Produkte',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_featured_section_label',
                'label'         => 'Produkte Bereichslabel',
                'name'          => 'featured_section_label',
                'type'          => 'text',
                'default_value' => 'PRODUKTE',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_featured_section_title',
                'label'         => 'Produkte Bereichstitel',
                'name'          => 'featured_section_title',
                'type'          => 'text',
                'default_value' => 'Ausgewaehlte Produkte',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_featured_products_count',
                'label'         => 'Anzahl Produkte',
                'name'          => 'featured_products_count',
                'type'          => 'number',
                'default_value' => 4,
                'min'           => 2,
                'max'           => 12,
                'wrapper'       => array( 'width' => '33' ),
            ),
            array(
                'key'           => 'field_featured_cta_text',
                'label'         => 'Produkte CTA Text',
                'name'          => 'featured_cta_text',
                'type'          => 'text',
                'default_value' => 'Alle Produkte ansehen',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_featured_cta_url',
                'label'         => 'Produkte CTA URL',
                'name'          => 'featured_cta_url',
                'type'          => 'url',
                'default_value' => '/shop/',
                'wrapper'       => array( 'width' => '50' ),
            ),

            // -----------------------------------------------------------------
            // Tab: Ueber uns Teaser
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_hp_tab_about',
                'label'     => 'Ueber uns Teaser',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_about_section_label',
                'label'         => 'Ueber uns Bereichslabel',
                'name'          => 'about_section_label',
                'type'          => 'text',
                'default_value' => 'UEBER UNS',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_about_section_title',
                'label'         => 'Ueber uns Bereichstitel',
                'name'          => 'about_section_title',
                'type'          => 'text',
                'default_value' => 'Ueber STEW',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'          => 'field_about_text',
                'label'        => 'Ueber uns Text',
                'name'         => 'about_text',
                'type'         => 'wysiwyg',
                'tabs'         => 'all',
                'toolbar'      => 'full',
                'media_upload' => 0,
            ),
            array(
                'key'           => 'field_about_image',
                'label'         => 'Ueber uns Bild',
                'name'          => 'about_image',
                'type'          => 'image',
                'return_format' => 'array',
                'preview_size'  => 'medium',
                'library'       => 'all',
            ),
            array(
                'key'           => 'field_about_cta_text_hp',
                'label'         => 'Ueber uns CTA Text',
                'name'          => 'about_cta_text',
                'type'          => 'text',
                'default_value' => 'Mehr erfahren',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_about_cta_url_hp',
                'label'         => 'Ueber uns CTA URL',
                'name'          => 'about_cta_url',
                'type'          => 'url',
                'default_value' => '/ueber-uns/',
                'wrapper'       => array( 'width' => '50' ),
            ),

            // -----------------------------------------------------------------
            // Tab: Newsletter
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_hp_tab_newsletter',
                'label'     => 'Newsletter',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_newsletter_title',
                'label'         => 'Newsletter Titel',
                'name'          => 'newsletter_title',
                'type'          => 'text',
                'default_value' => 'Newsletter',
            ),
            array(
                'key'           => 'field_newsletter_text',
                'label'         => 'Newsletter Text',
                'name'          => 'newsletter_text',
                'type'          => 'textarea',
                'default_value' => 'Erhalten Sie Updates zu neuen Produkten und exklusiven Angeboten.',
            ),
            array(
                'key'          => 'field_newsletter_cf7_shortcode',
                'label'        => 'Newsletter Formular Shortcode',
                'name'         => 'newsletter_cf7_shortcode',
                'type'         => 'text',
                'instructions' => 'Contact Form 7 Shortcode einfuegen',
            ),

            // -----------------------------------------------------------------
            // Tab: Kontakt CTA
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_hp_tab_cta',
                'label'     => 'Kontakt CTA',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_cta_title',
                'label'         => 'CTA Titel',
                'name'          => 'cta_title',
                'type'          => 'text',
                'default_value' => 'Haben Sie Fragen?',
            ),
            array(
                'key'           => 'field_cta_text',
                'label'         => 'CTA Text',
                'name'          => 'cta_text',
                'type'          => 'textarea',
                'default_value' => 'Unser Team steht Ihnen gerne zur Verfuegung.',
            ),
            array(
                'key'           => 'field_cta_button_text',
                'label'         => 'CTA Button Text',
                'name'          => 'cta_button_text',
                'type'          => 'text',
                'default_value' => 'Kontakt aufnehmen',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_cta_button_url',
                'label'         => 'CTA Button URL',
                'name'          => 'cta_button_url',
                'type'          => 'url',
                'default_value' => '/kontakt/',
                'wrapper'       => array( 'width' => '50' ),
            ),

            // -----------------------------------------------------------------
            // Tab: Footer (Global Settings - stored on Homepage)
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_hp_tab_footer',
                'label'     => 'Footer',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_footer_brand_text',
                'label'         => 'Footer Markenname',
                'name'          => 'footer_brand_text',
                'type'          => 'text',
                'default_value' => 'STEW',
            ),
            array(
                'key'           => 'field_footer_description',
                'label'         => 'Footer Beschreibung',
                'name'          => 'footer_description',
                'type'          => 'textarea',
                'default_value' => 'Professionelle LED-Beleuchtung fuer anspruchsvolle Projekte',
            ),

            // -----------------------------------------------------------------
            // Tab: Globale Kontaktdaten (Global Settings - stored on Homepage)
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_hp_tab_global_contact',
                'label'     => 'Globale Kontaktdaten',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'     => 'field_global_phone',
                'label'   => 'Telefon',
                'name'    => 'global_phone',
                'type'    => 'text',
                'wrapper' => array( 'width' => '50' ),
            ),
            array(
                'key'     => 'field_global_email',
                'label'   => 'E-Mail',
                'name'    => 'global_email',
                'type'    => 'email',
                'wrapper' => array( 'width' => '50' ),
            ),
            array(
                'key'   => 'field_global_address',
                'label' => 'Adresse',
                'name'  => 'global_address',
                'type'  => 'textarea',
            ),

            // -----------------------------------------------------------------
            // Tab: Social Media (Global Settings - stored on Homepage)
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_hp_tab_social',
                'label'     => 'Social Media',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'   => 'field_social_linkedin',
                'label' => 'LinkedIn URL',
                'name'  => 'social_linkedin',
                'type'  => 'url',
            ),
            array(
                'key'   => 'field_social_instagram',
                'label' => 'Instagram URL',
                'name'  => 'social_instagram',
                'type'  => 'url',
            ),
            array(
                'key'   => 'field_social_facebook',
                'label' => 'Facebook URL',
                'name'  => 'social_facebook',
                'type'  => 'url',
            ),
            array(
                'key'   => 'field_social_youtube',
                'label' => 'YouTube URL',
                'name'  => 'social_youtube',
                'type'  => 'url',
            ),
        ),
        'location'              => array(
            array(
                array(
                    'param'    => 'page_template',
                    'operator' => '==',
                    'value'    => 'page-templates/template-homepage.php',
                ),
            ),
        ),
        'menu_order'            => 0,
        'position'              => 'normal',
        'style'                 => 'default',
        'label_placement'       => 'top',
        'instruction_placement' => 'label',
        'hide_on_screen'        => '',
        'active'                => true,
        'description'           => 'Inhalte fuer die Homepage inkl. globaler Einstellungen (Footer, Kontakt, Social Media)',
        'show_in_rest'          => 0,
    ) );

    // =========================================================================
    // 2. Contact Page (group_contact_page)
    // =========================================================================
    acf_add_local_field_group( array(
        'key'                   => 'group_contact_page',
        'title'                 => 'Kontakt Inhalte',
        'fields'                => array(

            // -----------------------------------------------------------------
            // Tab: Seitenkopf
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_cp_tab_header',
                'label'     => 'Seitenkopf',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_contact_page_title',
                'label'         => 'Seitentitel',
                'name'          => 'contact_page_title',
                'type'          => 'text',
                'default_value' => 'Kontakt',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_contact_page_subtitle',
                'label'         => 'Seitenuntertitel',
                'name'          => 'contact_page_subtitle',
                'type'          => 'text',
                'default_value' => 'Wir freuen uns auf Ihre Nachricht',
                'wrapper'       => array( 'width' => '50' ),
            ),

            // -----------------------------------------------------------------
            // Tab: Formular
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_cp_tab_form',
                'label'     => 'Formular',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_contact_form_title',
                'label'         => 'Formular Titel',
                'name'          => 'contact_form_title',
                'type'          => 'text',
                'default_value' => 'Schreiben Sie uns',
            ),
            array(
                'key'          => 'field_contact_cf7_shortcode',
                'label'        => 'Kontaktformular Shortcode',
                'name'         => 'contact_cf7_shortcode',
                'type'         => 'text',
                'instructions' => 'Contact Form 7 Shortcode einfuegen',
            ),

            // -----------------------------------------------------------------
            // Tab: Kontaktdaten
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_cp_tab_details',
                'label'     => 'Kontaktdaten',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_company_name',
                'label'         => 'Firmenname',
                'name'          => 'company_name',
                'type'          => 'text',
                'default_value' => 'LG Lightguide AG / STEW',
            ),
            array(
                'key'           => 'field_address_line_1',
                'label'         => 'Adresszeile 1',
                'name'          => 'address_line_1',
                'type'          => 'text',
                'default_value' => 'Musterstrasse 123',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_address_line_2',
                'label'         => 'Adresszeile 2',
                'name'          => 'address_line_2',
                'type'          => 'text',
                'default_value' => '8000 Zuerich',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_address_country',
                'label'         => 'Land',
                'name'          => 'address_country',
                'type'          => 'text',
                'default_value' => 'Schweiz',
            ),
            array(
                'key'           => 'field_phone',
                'label'         => 'Telefon',
                'name'          => 'phone',
                'type'          => 'text',
                'default_value' => '+41 44 123 45 67',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_email',
                'label'         => 'E-Mail',
                'name'          => 'email',
                'type'          => 'email',
                'default_value' => 'info@stew.ch',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_opening_hours',
                'label'         => 'Oeffnungszeiten',
                'name'          => 'opening_hours',
                'type'          => 'textarea',
                'default_value' => 'Mo – Fr: 08:00 – 17:00 Uhr',
            ),
        ),
        'location'              => array(
            array(
                array(
                    'param'    => 'page_template',
                    'operator' => '==',
                    'value'    => 'page-templates/template-contact.php',
                ),
            ),
        ),
        'menu_order'            => 0,
        'position'              => 'normal',
        'style'                 => 'default',
        'label_placement'       => 'top',
        'instruction_placement' => 'label',
        'hide_on_screen'        => '',
        'active'                => true,
        'description'           => 'Inhalte fuer die Kontaktseite',
        'show_in_rest'          => 0,
    ) );

    // =========================================================================
    // 3. About Page (group_about_page)
    //    Converted from JSON - repeater replaced with individual fields (4 values)
    // =========================================================================
    acf_add_local_field_group( array(
        'key'                   => 'group_about_page',
        'title'                 => 'Ueber uns Inhalte',
        'fields'                => array(

            // -----------------------------------------------------------------
            // Tab: Seitenkopf
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_ap_tab_header',
                'label'     => 'Seitenkopf',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_about_page_title',
                'label'         => 'Seitentitel',
                'name'          => 'about_page_title',
                'type'          => 'text',
                'default_value' => 'Ueber STEW',
            ),
            array(
                'key'   => 'field_about_page_subtitle',
                'label' => 'Seitenuntertitel',
                'name'  => 'about_page_subtitle',
                'type'  => 'textarea',
            ),

            // -----------------------------------------------------------------
            // Tab: Geschichte
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_ap_tab_story',
                'label'     => 'Geschichte',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_story_section_label',
                'label'         => 'Geschichte Bereichslabel',
                'name'          => 'story_section_label',
                'type'          => 'text',
                'default_value' => 'UNSERE GESCHICHTE',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'     => 'field_story_section_title',
                'label'   => 'Geschichte Bereichstitel',
                'name'    => 'story_section_title',
                'type'    => 'text',
                'wrapper' => array( 'width' => '50' ),
            ),
            array(
                'key'          => 'field_story_text',
                'label'        => 'Geschichte Text',
                'name'         => 'story_text',
                'type'         => 'wysiwyg',
                'tabs'         => 'all',
                'toolbar'      => 'full',
                'media_upload' => 1,
            ),
            array(
                'key'           => 'field_story_image',
                'label'         => 'Geschichte Bild',
                'name'          => 'story_image',
                'type'          => 'image',
                'return_format' => 'array',
                'preview_size'  => 'medium',
                'library'       => 'all',
            ),

            // -----------------------------------------------------------------
            // Tab: Werte (repeater replaced with 4 individual value groups)
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_ap_tab_values',
                'label'     => 'Werte',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'           => 'field_values_section_label',
                'label'         => 'Werte Bereichslabel',
                'name'          => 'values_section_label',
                'type'          => 'text',
                'default_value' => 'WARUM STEW',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_values_section_title',
                'label'         => 'Werte Bereichstitel',
                'name'          => 'values_section_title',
                'type'          => 'text',
                'default_value' => 'Unsere Werte',
                'wrapper'       => array( 'width' => '50' ),
            ),

            // Value 1
            array(
                'key'     => 'field_value_1_title',
                'label'   => 'Wert 1 Titel',
                'name'    => 'value_1_title',
                'type'    => 'text',
                'wrapper' => array( 'width' => '50' ),
            ),
            array(
                'key'     => 'field_value_1_description',
                'label'   => 'Wert 1 Beschreibung',
                'name'    => 'value_1_description',
                'type'    => 'textarea',
                'wrapper' => array( 'width' => '50' ),
            ),

            // Value 2
            array(
                'key'     => 'field_value_2_title',
                'label'   => 'Wert 2 Titel',
                'name'    => 'value_2_title',
                'type'    => 'text',
                'wrapper' => array( 'width' => '50' ),
            ),
            array(
                'key'     => 'field_value_2_description',
                'label'   => 'Wert 2 Beschreibung',
                'name'    => 'value_2_description',
                'type'    => 'textarea',
                'wrapper' => array( 'width' => '50' ),
            ),

            // Value 3
            array(
                'key'     => 'field_value_3_title',
                'label'   => 'Wert 3 Titel',
                'name'    => 'value_3_title',
                'type'    => 'text',
                'wrapper' => array( 'width' => '50' ),
            ),
            array(
                'key'     => 'field_value_3_description',
                'label'   => 'Wert 3 Beschreibung',
                'name'    => 'value_3_description',
                'type'    => 'textarea',
                'wrapper' => array( 'width' => '50' ),
            ),

            // Value 4
            array(
                'key'     => 'field_value_4_title',
                'label'   => 'Wert 4 Titel',
                'name'    => 'value_4_title',
                'type'    => 'text',
                'wrapper' => array( 'width' => '50' ),
            ),
            array(
                'key'     => 'field_value_4_description',
                'label'   => 'Wert 4 Beschreibung',
                'name'    => 'value_4_description',
                'type'    => 'textarea',
                'wrapper' => array( 'width' => '50' ),
            ),

            // -----------------------------------------------------------------
            // Tab: CTA
            // -----------------------------------------------------------------
            array(
                'key'       => 'field_ap_tab_cta',
                'label'     => 'CTA',
                'name'      => '',
                'type'      => 'tab',
                'placement' => 'top',
            ),
            array(
                'key'   => 'field_about_cta_title',
                'label' => 'CTA Titel',
                'name'  => 'about_cta_title',
                'type'  => 'text',
            ),
            array(
                'key'   => 'field_about_cta_text',
                'label' => 'CTA Text',
                'name'  => 'about_cta_text',
                'type'  => 'textarea',
            ),
            array(
                'key'           => 'field_about_cta_button_text',
                'label'         => 'CTA Button Text',
                'name'          => 'about_cta_button_text',
                'type'          => 'text',
                'default_value' => 'Kontakt aufnehmen',
                'wrapper'       => array( 'width' => '50' ),
            ),
            array(
                'key'           => 'field_about_cta_button_url',
                'label'         => 'CTA Button URL',
                'name'          => 'about_cta_button_url',
                'type'          => 'url',
                'default_value' => '/kontakt/',
                'wrapper'       => array( 'width' => '50' ),
            ),
        ),
        'location'              => array(
            array(
                array(
                    'param'    => 'page_template',
                    'operator' => '==',
                    'value'    => 'page-templates/template-about.php',
                ),
            ),
        ),
        'menu_order'            => 0,
        'position'              => 'normal',
        'style'                 => 'default',
        'label_placement'       => 'top',
        'instruction_placement' => 'label',
        'hide_on_screen'        => '',
        'active'                => true,
        'description'           => 'Inhalte fuer die Ueber-uns-Seite',
        'show_in_rest'          => 0,
    ) );

}
