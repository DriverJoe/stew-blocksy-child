<?php
/**
 * STEW Admin Handbuch
 *
 * Interaktive Admin-Anleitung. Wird ueber den WP-Admin-Menuepunkt
 * "Handbuch" aufgerufen. Sichtbar nur fuer Administratoren.
 *
 * Eingebunden ueber stew_render_handbuch_page() in functions.php.
 *
 * @package STEW_Blocksy_Child
 */

if ( ! defined( 'ABSPATH' ) ) {
    exit;
}

$screenshots_url = STEW_CHILD_URI . '/admin-pages/screenshots';
$admin_url       = admin_url();
?>

<style>
/* === STEW Handbuch Stylesheet === */
:root {
    --stew-dark: #1A1A1A;
    --stew-gold: #C9A96E;
    --stew-gold-dark: #8B6F2E;
    --stew-bg: #F8F7F5;
    --stew-card: #FFFFFF;
    --stew-border: #E8E5E0;
    --stew-text: #1A1A1A;
    --stew-muted: #737373;
}

#wpcontent { padding-left: 0 !important; }
#wpfooter { display: none !important; }

.stew-handbuch {
    margin: 0 0 0 -20px;
    background: var(--stew-bg);
    min-height: calc(100vh - 32px);
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
    color: var(--stew-text);
    font-size: 14px;
    line-height: 1.55;
    display: grid;
    grid-template-columns: 280px 1fr;
    gap: 0;
}

/* === SIDEBAR === */
.stew-handbuch__sidebar {
    background: var(--stew-card);
    border-right: 1px solid var(--stew-border);
    padding: 24px 0;
    height: calc(100vh - 32px);
    position: sticky;
    top: 32px;
    overflow-y: auto;
}

.stew-handbuch__brand {
    padding: 0 24px 20px;
    border-bottom: 1px solid var(--stew-border);
}
.stew-handbuch__brand-name {
    font-size: 18px;
    font-weight: 700;
    color: var(--stew-gold);
    letter-spacing: 0.18em;
    margin: 0;
}
.stew-handbuch__brand-sub {
    font-size: 11px;
    color: var(--stew-muted);
    text-transform: uppercase;
    letter-spacing: 0.12em;
    margin: 4px 0 0;
}

.stew-handbuch__search {
    padding: 16px 24px;
}
.stew-handbuch__search input {
    width: 100%;
    padding: 8px 12px 8px 32px;
    border: 1px solid var(--stew-border);
    border-radius: 6px;
    font-size: 13px;
    background: var(--stew-bg) url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' width='14' fill='none' stroke='%23999' stroke-width='2'><circle cx='11' cy='11' r='8'/><path d='m21 21-4.3-4.3'/></svg>") 10px center no-repeat;
    box-sizing: border-box;
}
.stew-handbuch__search input:focus {
    outline: none;
    border-color: var(--stew-gold);
    background-color: var(--stew-card);
}

.stew-handbuch__lang-toggle {
    padding: 0 24px 12px;
    display: flex;
    gap: 4px;
}
.stew-handbuch__lang-toggle button {
    flex: 1;
    padding: 6px 10px;
    font-size: 11px;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.08em;
    background: var(--stew-bg);
    border: 1px solid var(--stew-border);
    color: var(--stew-muted);
    border-radius: 4px;
    cursor: pointer;
    transition: all 0.15s;
}
.stew-handbuch__lang-toggle button.is-active {
    background: var(--stew-dark);
    color: #fff;
    border-color: var(--stew-dark);
}

.stew-handbuch__toc {
    padding: 8px 0;
    list-style: none;
    margin: 0;
    counter-reset: chap;
}
.stew-handbuch__toc li {
    counter-increment: chap;
}
.stew-handbuch__toc a {
    display: flex;
    align-items: flex-start;
    gap: 10px;
    padding: 9px 24px;
    color: var(--stew-text);
    text-decoration: none;
    font-size: 13px;
    border-left: 3px solid transparent;
    transition: all 0.15s;
}
.stew-handbuch__toc a::before {
    content: counter(chap, decimal-leading-zero);
    color: var(--stew-muted);
    font-weight: 700;
    font-feature-settings: 'tnum';
    font-size: 11px;
    margin-top: 1px;
    flex-shrink: 0;
}
.stew-handbuch__toc a:hover {
    background: var(--stew-bg);
    color: var(--stew-text);
}
.stew-handbuch__toc a.is-active {
    background: rgba(201, 169, 110, 0.08);
    border-left-color: var(--stew-gold);
    color: var(--stew-text);
    font-weight: 500;
}
.stew-handbuch__toc a.is-active::before {
    color: var(--stew-gold);
}
.stew-handbuch__toc li.is-hidden { display: none; }

.stew-handbuch__sidebar-footer {
    padding: 16px 24px;
    border-top: 1px solid var(--stew-border);
    margin-top: 16px;
    font-size: 11px;
    color: var(--stew-muted);
}
.stew-handbuch__sidebar-footer button {
    width: 100%;
    padding: 8px 12px;
    background: var(--stew-dark);
    color: #fff;
    border: none;
    border-radius: 4px;
    font-size: 12px;
    cursor: pointer;
    margin-top: 8px;
}
.stew-handbuch__sidebar-footer button:hover {
    background: #2A2A2A;
}

/* === MAIN CONTENT === */
.stew-handbuch__main {
    padding: 32px 56px 80px;
    max-width: 920px;
    width: 100%;
    box-sizing: border-box;
}

.stew-handbuch__quick {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
    gap: 10px;
    margin-bottom: 32px;
    padding: 16px;
    background: var(--stew-card);
    border-radius: 8px;
    border: 1px solid var(--stew-border);
}
.stew-handbuch__quick-label {
    grid-column: 1 / -1;
    font-size: 11px;
    color: var(--stew-muted);
    text-transform: uppercase;
    letter-spacing: 0.1em;
    font-weight: 600;
    margin: 0 0 4px;
}
.stew-handbuch__quick a {
    display: block;
    padding: 10px 14px;
    background: var(--stew-bg);
    border: 1px solid var(--stew-border);
    border-radius: 6px;
    color: var(--stew-text);
    text-decoration: none;
    font-size: 13px;
    font-weight: 500;
    transition: all 0.15s;
}
.stew-handbuch__quick a:hover {
    background: var(--stew-dark);
    color: #fff;
    border-color: var(--stew-dark);
}
.stew-handbuch__quick a span {
    color: var(--stew-gold);
    margin-right: 6px;
    font-weight: 700;
}
.stew-handbuch__quick a:hover span { color: var(--stew-gold); }

.stew-handbuch__chapter {
    background: var(--stew-card);
    border: 1px solid var(--stew-border);
    border-radius: 10px;
    padding: 32px 36px;
    margin-bottom: 24px;
    scroll-margin-top: 50px;
}
.stew-handbuch__chapter.is-hidden { display: none; }

.stew-handbuch__chapter-num {
    font-size: 11px;
    color: var(--stew-gold);
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 0.18em;
    margin-bottom: 6px;
}
.stew-handbuch__chapter-title {
    font-size: 24px;
    font-weight: 700;
    margin: 0 0 4px;
    color: var(--stew-text);
}
.stew-handbuch__chapter-title-en {
    font-size: 13px;
    color: var(--stew-muted);
    font-style: italic;
    margin: 0 0 24px;
}

.stew-handbuch h3 {
    font-size: 16px;
    margin: 28px 0 8px;
    color: var(--stew-text);
}
.stew-handbuch h3 .en {
    display: block;
    font-size: 11px;
    color: var(--stew-muted);
    font-style: italic;
    font-weight: 400;
    margin-top: 2px;
}
.stew-handbuch p {
    margin: 0 0 12px;
}
.stew-handbuch p.en {
    color: var(--stew-muted);
    font-style: italic;
    font-size: 12.5px;
    margin-top: -8px;
    margin-bottom: 14px;
}

/* Steps */
.stew-handbuch ol.steps {
    counter-reset: step;
    list-style: none;
    padding: 0;
    margin: 16px 0 20px;
}
.stew-handbuch ol.steps > li {
    counter-increment: step;
    position: relative;
    padding-left: 36px;
    margin-bottom: 12px;
}
.stew-handbuch ol.steps > li::before {
    content: counter(step);
    position: absolute;
    left: 0;
    top: 0;
    width: 24px;
    height: 24px;
    background: var(--stew-dark);
    color: #fff;
    border-radius: 50%;
    text-align: center;
    line-height: 24px;
    font-weight: 700;
    font-size: 12px;
}
.stew-handbuch ol.steps > li .en {
    color: var(--stew-muted);
    font-style: italic;
    font-size: 12px;
    display: block;
    margin-top: 2px;
}

/* Callouts */
.stew-handbuch .callout {
    background: #FFF8E8;
    border-left: 3px solid var(--stew-gold);
    padding: 12px 16px;
    margin: 16px 0;
    border-radius: 0 6px 6px 0;
}
.stew-handbuch .callout strong {
    color: var(--stew-gold-dark);
    text-transform: uppercase;
    font-size: 10.5px;
    letter-spacing: 0.12em;
    display: block;
    margin-bottom: 6px;
}
.stew-handbuch .callout.warn { background: #FDEBEB; border-left-color: #C44C4C; }
.stew-handbuch .callout.warn strong { color: #A33A3A; }
.stew-handbuch .callout .en {
    color: var(--stew-muted);
    font-style: italic;
    font-size: 12.5px;
    display: block;
    margin-top: 4px;
}

/* Tables */
.stew-handbuch table {
    width: 100%;
    border-collapse: collapse;
    margin: 14px 0 18px;
    font-size: 13px;
}
.stew-handbuch th, .stew-handbuch td {
    text-align: left;
    padding: 10px 12px;
    border-bottom: 1px solid var(--stew-border);
    vertical-align: top;
}
.stew-handbuch th {
    background: var(--stew-bg);
    font-weight: 600;
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 0.08em;
    color: var(--stew-muted);
}
.stew-handbuch td .en {
    display: block;
    color: var(--stew-muted);
    font-size: 11px;
    font-style: italic;
    margin-top: 2px;
}

/* Inline */
.stew-handbuch code, .stew-handbuch kbd {
    background: var(--stew-bg);
    padding: 2px 6px;
    border-radius: 3px;
    font-family: 'SF Mono', Monaco, Consolas, monospace;
    font-size: 12px;
}
.stew-handbuch kbd {
    border: 1px solid #D0CDC5;
    box-shadow: 0 1px 0 #D0CDC5;
    font-weight: 600;
}
.stew-handbuch .path {
    background: var(--stew-dark);
    color: var(--stew-gold);
    padding: 3px 8px;
    border-radius: 4px;
    font-family: 'SF Mono', monospace;
    font-size: 12px;
}

/* Figures */
.stew-handbuch figure {
    margin: 16px 0;
}
.stew-handbuch figure img {
    width: 100%;
    border: 1px solid var(--stew-border);
    border-radius: 6px;
    background: var(--stew-bg);
    cursor: zoom-in;
    transition: transform 0.2s;
}
.stew-handbuch figure img:hover {
    transform: scale(1.005);
    box-shadow: 0 8px 24px rgba(0,0,0,0.08);
}
.stew-handbuch figcaption {
    font-size: 11.5px;
    color: var(--stew-muted);
    text-align: center;
    margin-top: 8px;
    font-style: italic;
}

/* Language toggle states */
.stew-handbuch[data-lang="de"] .en,
.stew-handbuch[data-lang="de"] p.en,
.stew-handbuch[data-lang="de"] .stew-handbuch__chapter-title-en { display: none; }
.stew-handbuch[data-lang="en"] .lang-de { display: none; }

/* Image lightbox overlay */
.stew-lightbox {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,0.85);
    z-index: 99999;
    display: none;
    align-items: center;
    justify-content: center;
    padding: 40px;
    cursor: zoom-out;
}
.stew-lightbox.is-open { display: flex; }
.stew-lightbox img {
    max-width: 100%;
    max-height: 100%;
    border-radius: 6px;
    box-shadow: 0 20px 60px rgba(0,0,0,0.4);
}

@media (max-width: 1100px) {
    .stew-handbuch { grid-template-columns: 1fr; }
    .stew-handbuch__sidebar { position: static; height: auto; }
}
</style>

<div class="stew-handbuch" data-lang="both">

    <aside class="stew-handbuch__sidebar">
        <div class="stew-handbuch__brand">
            <h1 class="stew-handbuch__brand-name">STEW.</h1>
            <p class="stew-handbuch__brand-sub">Admin-Handbuch</p>
        </div>

        <div class="stew-handbuch__search">
            <input type="search" id="stew-handbuch-search" placeholder="Suchen / Search…" aria-label="Suchen">
        </div>

        <div class="stew-handbuch__lang-toggle" role="tablist">
            <button data-lang="both" class="is-active" type="button">DE + EN</button>
            <button data-lang="de" type="button">Nur DE</button>
            <button data-lang="en" type="button">EN only</button>
        </div>

        <ol class="stew-handbuch__toc" id="stew-handbuch-toc">
            <li><a href="#kapitel-konten">Ihre Anmeldedaten</a></li>
            <li><a href="#kapitel-1">Anmelden im Admin-Bereich</a></li>
            <li><a href="#kapitel-2">Übersicht des Dashboards</a></li>
            <li><a href="#kapitel-3">Produkte verwalten</a></li>
            <li><a href="#kapitel-4">Bilder hochladen</a></li>
            <li><a href="#kapitel-5">Bestellungen bearbeiten</a></li>
            <li><a href="#kapitel-6">Kunden &amp; Händler verwalten</a></li>
            <li><a href="#kapitel-7">Händler-Anträge freigeben</a></li>
            <li><a href="#kapitel-8">Rollenbasierte Preise</a></li>
            <li><a href="#kapitel-9">Seiten bearbeiten</a></li>
            <li><a href="#kapitel-10">Versand &amp; Lieferkosten</a></li>
            <li><a href="#kapitel-11">Zahlungen (Stripe)</a></li>
            <li><a href="#kapitel-12">Passwort vergessen</a></li>
            <li><a href="#kapitel-13">Schnellreferenz</a></li>
            <li><a href="#kapitel-14">Support &amp; Kontakt</a></li>
        </ol>

        <div class="stew-handbuch__sidebar-footer">
            <p>Version 1.0 — Juni 2026</p>
            <button id="stew-handbuch-print" type="button">📄 Als PDF drucken</button>
        </div>
    </aside>

    <main class="stew-handbuch__main">

        <!-- Quick action bar -->
        <div class="stew-handbuch__quick">
            <p class="stew-handbuch__quick-label">⚡ Schnellzugriff / Quick links</p>
            <a href="<?php echo esc_url( $admin_url . 'edit.php?post_type=product' ); ?>"><span>→</span>Produkte</a>
            <a href="<?php echo esc_url( $admin_url . 'admin.php?page=wc-orders' ); ?>"><span>→</span>Bestellungen</a>
            <a href="<?php echo esc_url( $admin_url . 'users.php' ); ?>"><span>→</span>Benutzer</a>
            <a href="<?php echo esc_url( $admin_url . 'admin.php?page=stew-role-pricing' ); ?>"><span>→</span>Rollenpreise</a>
            <a href="<?php echo esc_url( $admin_url . 'admin.php?page=wc-settings&tab=shipping' ); ?>"><span>→</span>Versand</a>
            <a href="<?php echo esc_url( $admin_url . 'edit.php?post_type=page' ); ?>"><span>→</span>Seiten</a>
            <a href="<?php echo esc_url( $admin_url . 'upload.php' ); ?>"><span>→</span>Mediathek</a>
            <a href="<?php echo esc_url( home_url() ); ?>" target="_blank"><span>↗</span>Shop ansehen</a>
        </div>

        <!-- KONTEN -->
        <section class="stew-handbuch__chapter" id="kapitel-konten">
            <div class="stew-handbuch__chapter-num">Vor Kapitel 01 / Pre-chapter</div>
            <h2 class="stew-handbuch__chapter-title">Ihre Anmeldedaten</h2>
            <p class="stew-handbuch__chapter-title-en">Your login credentials</p>

            <p class="lang-de">Es wurden zwei Administrator-Konten eingerichtet. Mit diesen Konten können Sie alle Funktionen in diesem Handbuch nutzen.</p>
            <p class="en">Two administrator accounts have been set up. With these you can use every feature described in this guide.</p>

            <table>
                <thead><tr><th>Person</th><th>Benutzername</th><th>E-Mail</th></tr></thead>
                <tbody>
                    <tr><td><strong>Ronny Meier</strong></td><td><code>ronny.meier</code></td><td><code>ronny.meier@lightguide.ch</code></td></tr>
                    <tr><td><strong>Michael Rohrer</strong></td><td><code>michael.rohrer</code></td><td><code>Michael.Rohrer@lightguide.ch</code></td></tr>
                </tbody>
            </table>

            <div class="callout warn">
                <strong>Initial-Passwort separat / Initial password sent separately</strong>
                <span class="lang-de">Sie haben Ihr Initial-Passwort von Joe persönlich erhalten (per Signal / SMS / im Gespräch — NICHT per E-Mail). Bitte ändern Sie es nach der ersten Anmeldung sofort über <strong>Benutzer → Profil bearbeiten</strong>.</span>
                <span class="en">Your initial password was sent to you personally by Joe (via Signal / SMS / in person — never by email). Please change it immediately after first login.</span>
            </div>
        </section>

        <!-- KAPITEL 1 -->
        <section class="stew-handbuch__chapter" id="kapitel-1">
            <div class="stew-handbuch__chapter-num">Kapitel 01</div>
            <h2 class="stew-handbuch__chapter-title">Anmelden im Admin-Bereich</h2>
            <p class="stew-handbuch__chapter-title-en">Logging in to the admin area</p>

            <p class="lang-de">Um Produkte hinzuzufügen, Bestellungen zu sehen oder Texte zu ändern, müssen Sie sich im Admin-Bereich anmelden.</p>
            <p class="en">To add products, view orders, or change content, you log in to the admin area.</p>

            <ol class="steps">
                <li>Öffnen Sie diese Adresse:<br><strong>Während der Test-Phase:</strong> <span class="path">stew-stewlights.oukwtg.easypanel.host/wp-admin/</span><br><strong>Nach Go-Live:</strong> <span class="path">stew.ch/wp-admin/</span><span class="en">Open this address — staging URL during testing, stew.ch after go-live.</span></li>
                <li>Geben Sie Ihren <strong>Benutzernamen</strong> oder Ihre <strong>E-Mail-Adresse</strong> ein. <span class="en">Enter username or email.</span></li>
                <li>Geben Sie Ihr <strong>Passwort</strong> ein. <span class="en">Enter password.</span></li>
                <li>Klicken Sie auf <kbd>Anmelden</kbd>. <span class="en">Click Log in.</span></li>
            </ol>

            <figure><img src="<?php echo esc_url( $screenshots_url . '/01-login.png' ); ?>" alt="Login"><figcaption>Die Anmeldeseite <span class="en">— login page</span></figcaption></figure>
        </section>

        <!-- KAPITEL 2 -->
        <section class="stew-handbuch__chapter" id="kapitel-2">
            <div class="stew-handbuch__chapter-num">Kapitel 02</div>
            <h2 class="stew-handbuch__chapter-title">Übersicht des Dashboards</h2>
            <p class="stew-handbuch__chapter-title-en">Dashboard overview</p>

            <p class="lang-de">Nach dem Anmelden sehen Sie das Dashboard. Auf der linken Seite ist das Hauptmenü — von hier erreichen Sie alle Bereiche.</p>
            <p class="en">After login you see the Dashboard. The main menu is on the left.</p>

            <figure><img src="<?php echo esc_url( $screenshots_url . '/02-dashboard.png' ); ?>" alt="Dashboard"><figcaption>Das Dashboard</figcaption></figure>

            <table>
                <thead><tr><th>Menüpunkt</th><th>Was Sie dort tun</th></tr></thead>
                <tbody>
                    <tr><td><strong>Seiten</strong></td><td>Texte auf Startseite, Über uns, Kontakt, Impressum bearbeiten</td></tr>
                    <tr><td><strong>Mediathek</strong></td><td>Bilder und PDFs hochladen</td></tr>
                    <tr><td><strong>Produkte</strong></td><td>Produkte hinzufügen, bearbeiten, löschen</td></tr>
                    <tr><td><strong>WooCommerce</strong></td><td>Bestellungen, Versand, Zahlungen, Rabatte</td></tr>
                    <tr><td><strong>Benutzer</strong></td><td>Kunden, Händler, Mitarbeiter verwalten</td></tr>
                </tbody>
            </table>
        </section>

        <!-- KAPITEL 3 -->
        <section class="stew-handbuch__chapter" id="kapitel-3">
            <div class="stew-handbuch__chapter-num">Kapitel 03</div>
            <h2 class="stew-handbuch__chapter-title">Produkte verwalten</h2>
            <p class="stew-handbuch__chapter-title-en">Managing products</p>

            <h3>3.1 Produktliste anzeigen <span class="en">View products</span></h3>
            <ol class="steps">
                <li>Klicken Sie im Menü auf <kbd>Produkte</kbd>. <span class="en">Click Produkte.</span></li>
                <li>Liste aller Produkte mit Name, Bild, Preis, Lager. <span class="en">Full product list.</span></li>
                <li>Suchen Sie schnell über die Suchleiste rechts oben. <span class="en">Search bar top right.</span></li>
            </ol>
            <figure><img src="<?php echo esc_url( $screenshots_url . '/03-products-list.png' ); ?>" alt="Produktliste"></figure>

            <h3>3.2 Neues Produkt hinzufügen <span class="en">Add product</span></h3>
            <ol class="steps">
                <li>Klicken Sie auf <kbd>Erstellen</kbd>. <span class="en">Click "Erstellen".</span></li>
                <li>Geben Sie den Produktnamen ein. <span class="en">Enter product name.</span></li>
                <li>Schreiben Sie eine Beschreibung. <span class="en">Write description.</span></li>
                <li>Bei <strong>Produktdaten</strong> setzen Sie den Preis. <span class="en">Set price in "Produktdaten".</span></li>
                <li>Artikelnummer (SKU) eintragen. <span class="en">Enter SKU.</span></li>
                <li>Lagerbestand setzen. <span class="en">Set stock.</span></li>
                <li>Rechts: Produktkategorien wählen. <span class="en">Pick categories (right side).</span></li>
                <li>Rechts oben: <strong>Beitragsbild festlegen</strong> → Bild hochladen. <span class="en">Top right: set featured image.</span></li>
                <li>Klicken Sie <kbd>Veröffentlichen</kbd>. <span class="en">Click Veröffentlichen.</span></li>
            </ol>
            <figure><img src="<?php echo esc_url( $screenshots_url . '/04-product-new.png' ); ?>" alt="Neues Produkt"></figure>

            <div class="callout">
                <strong>Wichtig / Important</strong>
                <span class="lang-de">Solange Sie nicht auf <kbd>Veröffentlichen</kbd> klicken, ist das Produkt nur ein Entwurf — es erscheint NICHT im Shop.</span>
                <span class="en">Until "Veröffentlichen" is clicked, the product is a draft and not in the shop.</span>
            </div>

            <h3>3.3 Produkt als „Ausgewählt" markieren <span class="en">Mark as featured</span></h3>
            <p class="lang-de">Produkte mit Stern (★) erscheinen im Bereich „Ausgewählte Produkte" auf der Startseite.</p>
            <p class="en">Products with a star appear in "Ausgewählte Produkte" on the homepage.</p>
            <div class="callout warn">
                <strong>Achtung</strong>
                <span class="lang-de">Nur veröffentlichte Produkte werden auf der Startseite gezeigt. Ein Stern auf einem Entwurf zeigt das Produkt NICHT.</span>
                <span class="en">Only published products show. Starring a draft does nothing visible.</span>
            </div>

            <h3>3.4 Produkt vorübergehend ausblenden <span class="en">Hide product</span></h3>
            <p class="lang-de">Stellen Sie den Status oben rechts auf <strong>Entwurf</strong> und klicken Sie <kbd>Aktualisieren</kbd>.</p>
            <p class="en">Set status to "Entwurf" top right and click Aktualisieren.</p>
            <figure><img src="<?php echo esc_url( $screenshots_url . '/05-product-edit.png' ); ?>" alt="Produkt bearbeiten"></figure>
        </section>

        <!-- KAPITEL 4 -->
        <section class="stew-handbuch__chapter" id="kapitel-4">
            <div class="stew-handbuch__chapter-num">Kapitel 04</div>
            <h2 class="stew-handbuch__chapter-title">Bilder hochladen (Mediathek)</h2>
            <p class="stew-handbuch__chapter-title-en">Uploading images (media library)</p>

            <ol class="steps">
                <li>Menü: <kbd>Mediathek</kbd>. <span class="en">Menu: Mediathek.</span></li>
                <li><kbd>Datei hinzufügen</kbd> oder Dateien direkt in das Fenster ziehen. <span class="en">Click "Datei hinzufügen" or drag files.</span></li>
                <li>Warten Sie auf den grünen Balken. <span class="en">Wait for the green bar.</span></li>
            </ol>
            <figure><img src="<?php echo esc_url( $screenshots_url . '/15-media-library.png' ); ?>" alt="Mediathek"></figure>

            <div class="callout">
                <strong>Tipp</strong>
                <span class="lang-de">Benennen Sie Bilder sinnvoll: <code>tridonic-lc-60w-24v.jpg</code> statt <code>IMG_1234.jpg</code>.</span>
                <span class="en">Name files sensibly before upload.</span>
            </div>
        </section>

        <!-- KAPITEL 5 -->
        <section class="stew-handbuch__chapter" id="kapitel-5">
            <div class="stew-handbuch__chapter-num">Kapitel 05</div>
            <h2 class="stew-handbuch__chapter-title">Bestellungen bearbeiten</h2>
            <p class="stew-handbuch__chapter-title-en">Processing orders</p>

            <ol class="steps">
                <li>Menü: <kbd>WooCommerce → Bestellungen</kbd>. <span class="en">Menu: WooCommerce → Bestellungen.</span></li>
                <li>Klicken Sie auf eine Bestellnummer. <span class="en">Click an order number.</span></li>
                <li>Rechts: Status ändern. <span class="en">Change status on the right.</span></li>
                <li><kbd>Aktualisieren</kbd>. <span class="en">Click Aktualisieren.</span></li>
            </ol>
            <figure><img src="<?php echo esc_url( $screenshots_url . '/06-orders-list.png' ); ?>" alt="Bestellliste"></figure>

            <h3>Status-Bedeutungen <span class="en">Status meanings</span></h3>
            <table>
                <thead><tr><th>Status</th><th>Bedeutung</th><th>Was tun?</th></tr></thead>
                <tbody>
                    <tr><td><strong>Wartet auf Zahlung</strong></td><td>Zahlung läuft</td><td>Abwarten</td></tr>
                    <tr><td><strong>In Bearbeitung</strong></td><td>Zahlung OK, noch nicht versandt</td><td>Versenden</td></tr>
                    <tr><td><strong>Fertiggestellt</strong></td><td>Alles geliefert</td><td>Nichts</td></tr>
                    <tr><td><strong>Erstattet</strong></td><td>Rückzahlung erfolgt</td><td>Fertig</td></tr>
                </tbody>
            </table>
            <figure><img src="<?php echo esc_url( $screenshots_url . '/07-order-detail.png' ); ?>" alt="Bestelldetail"></figure>

            <h3>Erstattung ausführen <span class="en">Issue refund</span></h3>
            <ol class="steps">
                <li>Bestellung öffnen. <span class="en">Open order.</span></li>
                <li>Klicken Sie auf <kbd>Rückerstattung</kbd>. <span class="en">Click Rückerstattung.</span></li>
                <li>Artikel und Menge wählen. <span class="en">Choose items and quantity.</span></li>
                <li><kbd>Über Stripe erstatten</kbd>. <span class="en">Refund via Stripe.</span></li>
            </ol>
        </section>

        <!-- KAPITEL 6 -->
        <section class="stew-handbuch__chapter" id="kapitel-6">
            <div class="stew-handbuch__chapter-num">Kapitel 06</div>
            <h2 class="stew-handbuch__chapter-title">Kunden &amp; Händler verwalten</h2>
            <p class="stew-handbuch__chapter-title-en">Managing customers &amp; wholesale users</p>

            <p class="lang-de">Menü <kbd>Benutzer</kbd> zeigt alle Konten. Oben können Sie nach Rolle filtern.</p>
            <p class="en">Benutzer menu shows all accounts. Filter by role at the top.</p>
            <figure><img src="<?php echo esc_url( $screenshots_url . '/08-users-list.png' ); ?>" alt="Benutzerliste"></figure>

            <h3>Rollen <span class="en">Roles</span></h3>
            <table>
                <thead><tr><th>Rolle</th><th>Bedeutung</th></tr></thead>
                <tbody>
                    <tr><td><strong>Administrator</strong></td><td>Voller Zugriff. Nur Joe, Ronny, Michael.</td></tr>
                    <tr><td><strong>Shop-Manager</strong></td><td>Produkte + Bestellungen verwalten, keine WP-Einstellungen.</td></tr>
                    <tr><td><strong>Kunde</strong></td><td>Privatkunde, normaler Preis</td></tr>
                    <tr><td><strong>Händler</strong></td><td>Trade — 15% Rabatt</td></tr>
                    <tr><td><strong>VIP-Partner</strong></td><td>Premium-Trade — 25% Rabatt</td></tr>
                    <tr><td><strong>Händler (ausstehend)</strong></td><td>Wartet auf Ihre Freigabe (siehe Kapitel 7)</td></tr>
                </tbody>
            </table>
        </section>

        <!-- KAPITEL 7 -->
        <section class="stew-handbuch__chapter" id="kapitel-7">
            <div class="stew-handbuch__chapter-num">Kapitel 07</div>
            <h2 class="stew-handbuch__chapter-title">Händler-Anträge freigeben</h2>
            <p class="stew-handbuch__chapter-title-en">Approving wholesale applications</p>

            <p class="lang-de">Wenn jemand sich als Händler registriert, müssen Sie das Konto manuell freigeben.</p>
            <p class="en">Wholesale registrations need manual approval.</p>

            <ol class="steps">
                <li>Menü: <kbd>WooCommerce → Rollenbasierte Preise</kbd>. <span class="en">Menu path.</span></li>
                <li>Liste der ausstehenden Anträge prüfen (Firmenname, UID, E-Mail). <span class="en">Check pending applications.</span></li>
                <li>UID auf <code>uid.admin.ch</code> verifizieren. <span class="en">Verify UID on uid.admin.ch.</span></li>
                <li><kbd>Freigeben</kbd> — Kunde wird Händler, bekommt 15% Rabatt und eine Mail. <span class="en">Approve.</span></li>
                <li>Oder <kbd>Ablehnen</kbd> — Konto wird gelöscht. <span class="en">Or Reject.</span></li>
            </ol>
            <figure><img src="<?php echo esc_url( $screenshots_url . '/09-pricing-settings.png' ); ?>" alt="Pricing Settings"></figure>
        </section>

        <!-- KAPITEL 8 -->
        <section class="stew-handbuch__chapter" id="kapitel-8">
            <div class="stew-handbuch__chapter-num">Kapitel 08</div>
            <h2 class="stew-handbuch__chapter-title">Rollenbasierte Preise (Rabatte)</h2>
            <p class="stew-handbuch__chapter-title-en">Role-based pricing (discounts)</p>

            <ol class="steps">
                <li>Menü: <kbd>WooCommerce → Rollenbasierte Preise</kbd>. <span class="en">Menu path.</span></li>
                <li>Felder anpassen: Händler-Rabatt (Standard 15%), VIP-Rabatt (Standard 25%). <span class="en">Adjust discounts.</span></li>
                <li><kbd>Änderungen speichern</kbd>. <span class="en">Save.</span></li>
            </ol>
            <div class="callout">
                <strong>Wichtig</strong>
                <span class="lang-de">Sale-Produkte bekommen NICHT zusätzlich den Händler-Rabatt — sonst doppelt rabattiert.</span>
                <span class="en">Sale items don't get an additional wholesale discount.</span>
            </div>
        </section>

        <!-- KAPITEL 9 -->
        <section class="stew-handbuch__chapter" id="kapitel-9">
            <div class="stew-handbuch__chapter-num">Kapitel 09</div>
            <h2 class="stew-handbuch__chapter-title">Seiten bearbeiten</h2>
            <p class="stew-handbuch__chapter-title-en">Editing pages</p>

            <p class="lang-de">Menü <kbd>Seiten</kbd> zeigt alle Seiten — Startseite, Über uns, Kontakt, Impressum, Datenschutz, AGB.</p>
            <p class="en">Seiten menu shows all pages.</p>
            <figure><img src="<?php echo esc_url( $screenshots_url . '/10-pages-list.png' ); ?>" alt="Seitenliste"></figure>

            <h3>Startseite bearbeiten <span class="en">Edit homepage</span></h3>
            <p class="lang-de">Die Startseite besteht aus mehreren Blöcken (Hero, Kategorien, Newsletter, etc.). Scrollen Sie auf der Bearbeitungs-Seite nach unten — jedes Feld können Sie einzeln ändern.</p>
            <p class="en">Homepage is composed of blocks (Hero, Categories, Newsletter…). Scroll down to find each editable field.</p>
            <figure><img src="<?php echo esc_url( $screenshots_url . '/11-homepage-edit-acf.png' ); ?>" alt="Startseite bearbeiten"></figure>
        </section>

        <!-- KAPITEL 10 -->
        <section class="stew-handbuch__chapter" id="kapitel-10">
            <div class="stew-handbuch__chapter-num">Kapitel 10</div>
            <h2 class="stew-handbuch__chapter-title">Versand &amp; Lieferkosten</h2>
            <p class="stew-handbuch__chapter-title-en">Shipping &amp; delivery</p>

            <table>
                <thead><tr><th>Bestellwert</th><th>Versandkosten</th></tr></thead>
                <tbody>
                    <tr><td>Bis CHF 500.–</td><td><strong>CHF 15.– Pauschalversand</strong></td></tr>
                    <tr><td>Ab CHF 500.–</td><td><strong>Kostenlos</strong></td></tr>
                </tbody>
            </table>
            <p class="lang-de">Geliefert wird in Schweiz und Liechtenstein.</p>
            <p class="en">Delivery to Switzerland and Liechtenstein.</p>

            <h3>Ändern <span class="en">Edit</span></h3>
            <ol class="steps">
                <li>Menü: <kbd>WooCommerce → Einstellungen → Versand</kbd>. <span class="en">Menu path.</span></li>
                <li>Zone <strong>Schweiz</strong> klicken. <span class="en">Click Schweiz.</span></li>
                <li>Methode bearbeiten (Pauschalversand oder Kostenloser Versand). <span class="en">Edit method.</span></li>
                <li>Betrag ändern, speichern. <span class="en">Change amount, save.</span></li>
            </ol>
            <figure><img src="<?php echo esc_url( $screenshots_url . '/13-shipping-schweiz-zone.png' ); ?>" alt="Versandzone"></figure>
        </section>

        <!-- KAPITEL 11 -->
        <section class="stew-handbuch__chapter" id="kapitel-11">
            <div class="stew-handbuch__chapter-num">Kapitel 11</div>
            <h2 class="stew-handbuch__chapter-title">Zahlungen (Stripe)</h2>
            <p class="stew-handbuch__chapter-title-en">Payments (Stripe)</p>

            <p class="lang-de">Kreditkarten-Zahlungen laufen über Stripe. Kunden zahlen direkt, Geld geht auf das STEW-Bankkonto (abzüglich Stripe-Gebühren).</p>
            <p class="en">Card payments via Stripe. Money goes to STEW's bank account.</p>

            <ol class="steps">
                <li>Menü: <kbd>WooCommerce → Einstellungen → Zahlungen</kbd>. <span class="en">Menu path.</span></li>
                <li>Bei Stripe auf <kbd>Verwalten</kbd>. <span class="en">Click Verwalten next to Stripe.</span></li>
            </ol>
            <figure><img src="<?php echo esc_url( $screenshots_url . '/14-stripe-settings.png' ); ?>" alt="Stripe Settings"></figure>

            <div class="callout warn">
                <strong>Sicherheit</strong>
                <span class="lang-de">Stripe-Secret-Schlüssel niemals per E-Mail oder Chat teilen. Nur direkt im Admin eingeben.</span>
                <span class="en">Never share Stripe secret keys by email or chat. Paste directly in admin only.</span>
            </div>
        </section>

        <!-- KAPITEL 12 -->
        <section class="stew-handbuch__chapter" id="kapitel-12">
            <div class="stew-handbuch__chapter-num">Kapitel 12</div>
            <h2 class="stew-handbuch__chapter-title">Passwort vergessen</h2>
            <p class="stew-handbuch__chapter-title-en">Forgotten password</p>

            <ol class="steps">
                <li>Auf <span class="path">stew.ch/wp-admin/</span> gehen. <span class="en">Go to login page.</span></li>
                <li>Auf <strong>Passwort vergessen?</strong> klicken. <span class="en">Click "Passwort vergessen?".</span></li>
                <li>E-Mail-Adresse eingeben. <span class="en">Enter email.</span></li>
                <li>Mail-Link öffnen, neues Passwort setzen. <span class="en">Open email link, set new password.</span></li>
            </ol>
        </section>

        <!-- KAPITEL 13 -->
        <section class="stew-handbuch__chapter" id="kapitel-13">
            <div class="stew-handbuch__chapter-num">Kapitel 13</div>
            <h2 class="stew-handbuch__chapter-title">Schnellreferenz</h2>
            <p class="stew-handbuch__chapter-title-en">Cheat sheet</p>

            <table>
                <thead><tr><th>Aufgabe</th><th>Pfad</th></tr></thead>
                <tbody>
                    <tr><td>Neues Produkt</td><td>Produkte → Erstellen</td></tr>
                    <tr><td>Preis ändern</td><td>Produkte → [Name] → Produktdaten → Allgemein</td></tr>
                    <tr><td>Lagerbestand</td><td>Produkte → [Name] → Produktdaten → Lagerbestand</td></tr>
                    <tr><td>Produkt ausblenden</td><td>Produkte → [Name] → Status: Entwurf</td></tr>
                    <tr><td>Auf Startseite zeigen</td><td>Produkte → Liste → Stern klicken</td></tr>
                    <tr><td>Bestellung als versandt</td><td>WooCommerce → Bestellungen → Status: Fertiggestellt</td></tr>
                    <tr><td>Erstattung</td><td>Bestellung → Rückerstattung → Über Stripe</td></tr>
                    <tr><td>Händler freigeben</td><td>WooCommerce → Rollenbasierte Preise</td></tr>
                    <tr><td>Versandkosten</td><td>WooCommerce → Einstellungen → Versand → Schweiz</td></tr>
                    <tr><td>Über uns ändern</td><td>Seiten → Über uns → bearbeiten</td></tr>
                    <tr><td>Kontakt-Daten ändern</td><td>Seiten → Kontakt → bearbeiten</td></tr>
                    <tr><td>Bild hochladen</td><td>Mediathek → Datei hinzufügen</td></tr>
                    <tr><td>Rabatt-Prozente</td><td>WooCommerce → Rollenbasierte Preise</td></tr>
                </tbody>
            </table>
        </section>

        <!-- KAPITEL 14 -->
        <section class="stew-handbuch__chapter" id="kapitel-14">
            <div class="stew-handbuch__chapter-num">Kapitel 14</div>
            <h2 class="stew-handbuch__chapter-title">Support &amp; Kontakt</h2>
            <p class="stew-handbuch__chapter-title-en">Support &amp; contact</p>

            <table>
                <thead><tr><th>Rolle</th><th>Person</th><th>Kontakt</th></tr></thead>
                <tbody>
                    <tr><td>Projektleiter STEW</td><td><strong>Ronny Meier</strong></td><td><code>ronny.meier@lightguide.ch</code><br>+41 41 666 59 06</td></tr>
                    <tr><td>STEW-Team</td><td><strong>Michael Rohrer</strong></td><td><code>Michael.Rohrer@lightguide.ch</code></td></tr>
                    <tr><td>Web-Entwicklung</td><td><strong>Joe Driver</strong></td><td><code>joe@drivermarketing.co.uk</code></td></tr>
                </tbody>
            </table>

            <h3>Bevor Sie schreiben <span class="en">Before writing in</span></h3>
            <ol class="steps">
                <li>Seite aktualisieren mit <kbd>Cmd+Shift+R</kbd> oder <kbd>Ctrl+F5</kbd>. <span class="en">Refresh page.</span></li>
                <li>In anderem Browser testen. <span class="en">Try another browser.</span></li>
                <li>Screenshot machen. <span class="en">Take screenshot.</span></li>
                <li>Notieren, was Sie gemacht haben. <span class="en">Note what you did.</span></li>
            </ol>
        </section>
    </main>
</div>

<div class="stew-lightbox" id="stew-lightbox"><img src="" alt=""></div>

<script>
(function() {
    const root = document.querySelector('.stew-handbuch');
    const toc = document.getElementById('stew-handbuch-toc');
    const tocLinks = Array.from(toc.querySelectorAll('a'));
    const chapters = Array.from(root.querySelectorAll('.stew-handbuch__chapter'));
    const search = document.getElementById('stew-handbuch-search');
    const langButtons = root.querySelectorAll('.stew-handbuch__lang-toggle button');
    const printBtn = document.getElementById('stew-handbuch-print');
    const lightbox = document.getElementById('stew-lightbox');

    // Smooth scroll to anchor
    tocLinks.forEach(a => {
        a.addEventListener('click', function(e) {
            const id = this.getAttribute('href').slice(1);
            const target = document.getElementById(id);
            if (!target) return;
            e.preventDefault();
            const offset = target.getBoundingClientRect().top + window.scrollY - 16;
            window.scrollTo({ top: offset, behavior: 'smooth' });
            history.replaceState(null, '', '#' + id);
        });
    });

    // Active section highlight via IntersectionObserver
    const obs = new IntersectionObserver(entries => {
        entries.forEach(en => {
            if (en.isIntersecting) {
                const id = en.target.id;
                tocLinks.forEach(a => a.classList.toggle('is-active', a.getAttribute('href') === '#' + id));
            }
        });
    }, { rootMargin: '-30% 0px -60% 0px', threshold: 0 });
    chapters.forEach(c => obs.observe(c));

    // Search filter
    search.addEventListener('input', function() {
        const q = this.value.trim().toLowerCase();
        chapters.forEach((ch, i) => {
            const haystack = ch.textContent.toLowerCase();
            const match = !q || haystack.includes(q);
            ch.classList.toggle('is-hidden', !match);
            const tocLi = tocLinks[i]?.parentElement;
            if (tocLi) tocLi.classList.toggle('is-hidden', !match);
        });
    });

    // Language toggle
    langButtons.forEach(b => {
        b.addEventListener('click', function() {
            langButtons.forEach(x => x.classList.remove('is-active'));
            this.classList.add('is-active');
            root.dataset.lang = this.dataset.lang;
        });
    });

    // Print
    printBtn.addEventListener('click', function() { window.print(); });

    // Image lightbox
    root.addEventListener('click', function(e) {
        if (e.target.matches('figure img')) {
            const img = lightbox.querySelector('img');
            img.src = e.target.src;
            img.alt = e.target.alt;
            lightbox.classList.add('is-open');
        }
    });
    lightbox.addEventListener('click', () => lightbox.classList.remove('is-open'));
    document.addEventListener('keydown', e => { if (e.key === 'Escape') lightbox.classList.remove('is-open'); });
})();
</script>
