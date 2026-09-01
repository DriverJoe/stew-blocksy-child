/**
 * STEW Custom JavaScript
 *
 * @package STEW_Blocksy_Child
 * @version 2.0.0
 */

(function ($) {
    'use strict';

    /**
     * Smooth scroll for anchor links
     */
    function initSmoothScroll() {
        $('a[href^="#"]').not('.wc-tabs a, .woocommerce-tabs a').on('click', function (e) {
            var hash = this.getAttribute('href');
            if (!hash || hash === '#') return;
            var target = $(hash);
            if (target.length) {
                e.preventDefault();
                $('html, body').animate({
                    scrollTop: target.offset().top - 80
                }, 600);
            }
        });
    }

    /**
     * Product card hover enhancements
     */
    function initProductCards() {
        $('.stew-product-card, .products li.product').each(function () {
            var $card = $(this);
            $card.off('mouseenter.stew mouseleave.stew');

            $card.on('mouseenter.stew', function () {
                $(this).addClass('stew-card-hover');
            }).on('mouseleave.stew', function () {
                $(this).removeClass('stew-card-hover');
            });
        });
    }

    /**
     * Newsletter form AJAX
     */
    function initNewsletter() {
        $('.stew-newsletter-form').on('submit', function (e) {
            var $form = $(this);
            // Let CF7 handle submission if present
            if ($form.find('.wpcf7-form').length) return;

            e.preventDefault();
            var email = $form.find('input[type="email"]').val();
            if (!email) return;

            var $btn = $form.find('[type="submit"]');
            $btn.prop('disabled', true).text('...');

            $.ajax({
                url: stewAjax.ajaxurl,
                type: 'POST',
                data: {
                    action: 'stew_newsletter_signup',
                    email: email,
                    nonce: stewAjax.nonce
                },
                success: function () {
                    $form.find('input[type="email"]').val('');
                    $btn.prop('disabled', false).text('Anmelden');
                    alert('Vielen Dank für Ihre Anmeldung!');
                },
                error: function () {
                    $btn.prop('disabled', false).text('Anmelden');
                    alert('Ein Fehler ist aufgetreten. Bitte versuchen Sie es erneut.');
                }
            });
        });
    }

    /**
     * Initialize on DOM ready
     */
    $(document).ready(function () {
        initSmoothScroll();
        initProductCards();
        initNewsletter();
    });

})(jQuery);

/* A11: header cart badge. The count span and the link's aria-label are two
   representations of one number, so one setter feeds both. Classic AJAX
   add-to-cart (grid button, Blocksy's single-product form) swaps the span via
   WC fragments and fires added_to_cart with the label untouched; the block
   cart / checkout fire no jQuery event at all, so follow the wc/store/cart
   store there (no-op wherever wp.data is absent). */
(function ($) {
    'use strict';

    function stewSetCartBadge(n) {
        $('.stew-header-cart__count').text(n).css('display', n > 0 ? '' : 'none');
        $('.stew-header-cart').attr('aria-label', 'Warenkorb, ' + n + ' Artikel');
    }

    // Fragments path: the span was just replaced - read the new count into the label.
    $(document.body).on('added_to_cart removed_from_cart wc_fragments_refreshed wc_fragments_loaded', function () {
        stewSetCartBadge(parseInt($('.stew-header-cart__count').text(), 10) || 0);
    });

    // Block cart / checkout path. DOM-ready so the block scripts have registered the store.
    $(function () {
        if (!window.wp || !wp.data) { return; }
        var last = null;
        wp.data.subscribe(function () {
            var cart = wp.data.select('wc/store/cart');
            if (!cart || !cart.hasFinishedResolution('getCartData')) { return; }
            var n = cart.getCartData().itemsCount;
            if (n !== last) { last = n; stewSetCartBadge(n); }
        });
    });
})(jQuery);
