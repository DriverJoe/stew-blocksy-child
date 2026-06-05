<?php
/**
 * Upload product images from /tmp/product-images/ to WooCommerce.
 * Run with: wp --allow-root eval-file upload-images.php
 *
 * Expects image files named {SKU}.jpg or {SKU}.png in /tmp/product-images/
 */

if ( ! defined( 'ABSPATH' ) ) {
    exit;
}

$images_dir = '/tmp/product-images/';

if ( ! is_dir( $images_dir ) ) {
    echo "Error: Directory $images_dir does not exist.\n";
    echo "Upload images to the server first.\n";
    exit(1);
}

$files = glob( $images_dir . '*.{jpg,jpeg,png,webp}', GLOB_BRACE );
echo "Found " . count( $files ) . " image files.\n\n";

$uploaded = 0;
$skipped  = 0;
$errors   = 0;

foreach ( $files as $file ) {
    $filename = basename( $file );
    $sku = pathinfo( $filename, PATHINFO_FILENAME );

    // Find product by SKU
    $args = array(
        'post_type'      => 'product',
        'meta_key'       => '_sku',
        'meta_value'     => $sku,
        'fields'         => 'ids',
        'posts_per_page' => 1,
    );
    $ids = get_posts( $args );

    if ( empty( $ids ) ) {
        echo "  SKIP $sku — product not found\n";
        $skipped++;
        continue;
    }

    $product_id = $ids[0];

    // Skip if product already has a thumbnail
    if ( has_post_thumbnail( $product_id ) ) {
        echo "  SKIP $sku — already has image\n";
        $skipped++;
        continue;
    }

    // Upload the image
    $product = wc_get_product( $product_id );
    $product_name = $product ? $product->get_name() : $sku;

    // Prepare file for upload
    $file_array = array(
        'name'     => $filename,
        'tmp_name' => $file,
    );

    // Use wp_handle_sideload instead of wp_handle_upload for files already on server
    require_once ABSPATH . 'wp-admin/includes/file.php';
    require_once ABSPATH . 'wp-admin/includes/media.php';
    require_once ABSPATH . 'wp-admin/includes/image.php';

    // Copy file to temp location (wp_handle_sideload moves the file)
    $tmp_file = tempnam( sys_get_temp_dir(), 'stew_img_' );
    copy( $file, $tmp_file );

    $file_array['tmp_name'] = $tmp_file;

    $upload = wp_handle_sideload( $file_array, array( 'test_form' => false ) );

    if ( isset( $upload['error'] ) ) {
        echo "  ERROR $sku — {$upload['error']}\n";
        $errors++;
        continue;
    }

    // Create attachment
    $attachment = array(
        'post_mime_type' => $upload['type'],
        'post_title'     => $product_name,
        'post_content'   => '',
        'post_status'    => 'inherit',
    );

    $attach_id = wp_insert_attachment( $attachment, $upload['file'], $product_id );

    if ( is_wp_error( $attach_id ) ) {
        echo "  ERROR $sku — could not create attachment\n";
        $errors++;
        continue;
    }

    // Generate thumbnails
    $attach_data = wp_generate_attachment_metadata( $attach_id, $upload['file'] );
    wp_update_attachment_metadata( $attach_id, $attach_data );

    // Set as product thumbnail
    set_post_thumbnail( $product_id, $attach_id );

    echo "  OK $sku — uploaded as attachment #$attach_id\n";
    $uploaded++;
}

echo "\n=== DONE ===\n";
echo "Uploaded: $uploaded\n";
echo "Skipped:  $skipped\n";
echo "Errors:   $errors\n";
