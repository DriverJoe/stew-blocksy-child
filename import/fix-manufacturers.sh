#!/bin/bash
# Fix Simpex manufacturer names and update all part numbers
# Run inside WordPress Docker container

echo "=== Fixing Simpex manufacturer names ==="
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100021200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1100021200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100035202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1100035202: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100055200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1100055200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100240600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1100240600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107003600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1107003600: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107035600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1107035600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1109060600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1109060600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1110025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1110025200: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1110040200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1110040200: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1110040202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1110040202: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1110060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1110060200: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120009200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1120009200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120012200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1120012200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120015200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1120015200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1120025200: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120026200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1120026200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120030202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1120030202: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120035204" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1120035204: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120040200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1120040200: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120042200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1120042200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120044200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1120044200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120050206" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1120050206: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1120060200: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120060204" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1120060204: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120075205" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1120075205: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1140030200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1140030200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1140050201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1140050201: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1150050200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1150050200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1160060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1160060200: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1170010200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1170010200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1170036200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1170036200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201016300" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1201016300: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201025600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1201025600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201040600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1201040600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201080600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1201080600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201120600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1201120600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1201150600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201185600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1201185600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201240600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1201240600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201320600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1201320600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201600601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1201600601: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202016300" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202016300: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202025600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202025600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202030203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202030203: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202036400" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202036400: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202040600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202040600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202040601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202040601: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202060201: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060205" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1202060205: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202060600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202060601: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202080600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202080600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202100201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202100201: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202100600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202100600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202120200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202120200: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202120202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1202120202: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202120605" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202120605: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202150600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202185600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202185600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202240600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202240600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202320600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202320600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202480600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202480600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202600600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1202600600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1203150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1203150600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1204150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1204150600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1204320600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1204320600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1204480600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1204480600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211040600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1211040600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211120600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1211120600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1211150600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211185600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1211185600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211240600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1211240600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211320600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1211320600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212025600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212025600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212040600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212040600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212040601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212040601: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212040602" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212040602: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212060200: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212060600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212060600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212080601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212080601: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212100600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212100600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212120601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212120601: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212150600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212185600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212185600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212240601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212240601: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212320600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212320600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212480600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212480600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212600600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1212600600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1221060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1221060200: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1221060201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1221060201: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1221075600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1221075600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1222045200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222060600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1222060600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222060602" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "CINCON"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^CINCON$" || wp --allow-root term create pa_hersteller "CINCON" 2>/dev/null
  echo "  Fixed 1222060602: -> CINCON"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222075600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1222075600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222100600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1222100600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1222150600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222200600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1222200600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222240600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1222240600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1224150200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1224150200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1224200600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1224200600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1224240600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "MEAN WELL"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^MEAN WELL$" || wp --allow-root term create pa_hersteller "MEAN WELL" 2>/dev/null
  echo "  Fixed 1224240600: -> MEAN WELL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1242030200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1242030200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1242200200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1242200200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1272100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1272100200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1421100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1421100200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1421100201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1421100201: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1422025200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422030200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1422030200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1422045200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422050201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1422050201: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422075200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1422075200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422075201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1422075201: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422080201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1422080201: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422080202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1422080202: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1422100200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422150200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1422150200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1441100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1441100200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442030200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1442030200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442075201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1442075201: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442075202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1442075202: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442120200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1442120200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442150200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1442150200: -> EAGLERISE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442200200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_brand "EAGLERISE"
  wp --allow-root term list pa_hersteller --field=name 2>/dev/null | grep -q "^EAGLERISE$" || wp --allow-root term create pa_hersteller "EAGLERISE" 2>/dev/null
  echo "  Fixed 1442200200: -> EAGLERISE"
fi

echo ""
echo "=== Updating part numbers (Kred.-Artikelnr.) ==="
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991015" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "91266430"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991021" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "68402200"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991052" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PWR106A1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991053" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SL0560A1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991055" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PWR106M1 / 115687"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991056" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "DL1060M1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991057" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PWR090D2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991058" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PW0561M1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991059" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TLU20503-0 / 118121"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991064" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LIN100M1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991065" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LIN720D3"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991079" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "367549 TRA-MULTI-DIM"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991080" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "367549"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991082" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "367285 / TRA-TCI-350"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991083" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TCI-500mA-6W 122813"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991085" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "AS24004X3"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991090" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TRA-TCI-350mA-8W"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991093" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "23294-104-00"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991103" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "59.nwr.24.028"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991251" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "357088 860 A14500"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="-999991252" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "357089 / A310500IP67"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100007200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4062172199285 | IT FIT 7/220-240/700 CS"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100010200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000704 + 2x 28001699"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100015200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "6937186133946 | OT FIT 15/220-240/350 CS S MINI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100017200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000705 + 2x 28001699"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100019201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28004120"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100020200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899435612"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100021200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "FLS-21-500 LD"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899919419"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100025201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500819"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100025202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000706 + 2x 28001699"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100025203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "5136"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100025500" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "127330"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100028200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "5333"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100035200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899919402"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100035201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003376"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100035202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "FMS-35-700 LD"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100038200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "142024"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100040200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500820"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100040201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500792"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100040202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500907"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100040203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500791"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100050200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899917583"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100050201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899032804"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100050203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "5043"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100055200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "FMS-55-1050 LD"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28005035"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100065200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500995"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100075200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899590984 | OT FIT 75/220-240/700 D LT2 UF L"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100080200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899032781"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100080201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "122214I"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100090200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899188556"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1100240600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "XLG-240-L-A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1101008200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500799"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103003200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "A13350VL 12/24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103003201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "367127 / A13350VL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103003202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17665000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103003600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "373547 5.0635.65.03"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103003601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SLP03SS"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103004600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "27440-350-05"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103006200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "357077 / A16350QL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103006201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "357256"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103007200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17662000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103008500" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TCI-141056"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103011600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "A16350IP67"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103012200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "357069"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103012201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "357104"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103014200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "372276 TRA-TCI-350mA"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103015200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17613000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103015201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "112051 / 186229"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103015202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "A19350QL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103017200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "122246"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1103025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "EBP025C0350CS"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1105006200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "A13500TC"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1105006201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "379179 / 122602TCI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1105006202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "90214201"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1105010201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "ALPF1050"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1105012200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "A15500QL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1105012201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "VT4308 | T4.308"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1105012600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "A14500IP67"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1105014200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "141112"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1105020201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "355822 / A310500QL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1105020600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "A310500IP67"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1105022200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17823010"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107003600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SH-3-700 IP65 SB"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107007600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "90215301"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107012200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "A13700QL"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107012600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "A13700IP67"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107015200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17704000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107018200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "Treiber für 65/1349.06/5105"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107021201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "A39700IP67"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899917545"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107030600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000794"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107031200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17723000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107035600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LPC-35-700"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1107038200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500781"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1109040200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500348"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1109060600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LPC-60-1750"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1110025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LCM-25"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1110040200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LCM-40"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1110040201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "66001141"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1110040202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "XLC-40-H-BSN"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1110060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LCM-60"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1113017200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17607000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1113018200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17657000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120009200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-2305-9-C700"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120010200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "CC10W150-500 DALI NFC"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120010201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "DDT-8-10W-180-250mA-20-40V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120012200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "FLS-12-350 DALI2 LDC"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120015200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRPY-2305N-15CC200-700"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120015201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87501146"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120018200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899548190"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120020200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500921"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120020201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "CC20W200-550CG DALI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120020202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "CC20W100-800 DALI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LCM-25DA2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120025201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500897"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120025202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "D-CC25-D-900-IN"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120025500" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "127462"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120026200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "FLS-26-700 DALI2 LD1C"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120028200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28004042"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120030200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "EC0360A6"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120030201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SL0360S3"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120030202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "FLS-30-700-DALI2-LD-PRO-C"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120030203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87501147"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120030600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "152012"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120030601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TCI-152010"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120035200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899488168 | OTi DALI 35/220-240/1A0 LT2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120035201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003201"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120035202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000654"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120035203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28002941"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120035204" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "FMS-35-700 DALI2 LD"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120038200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "127490"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120038201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "127492"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120038202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28004043"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120040200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LCM-40DA2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120040201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "211-A1F-027"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120040202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500900"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120040203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500901"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120040204" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "127873"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120040205" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500899"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120040206" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "5068-1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120042200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "FLS-42-1050-DALI2-LD-PRO-C"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120044200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "FLS-44-1050 DALI2 LD1C"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120044201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "5068-M"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500923"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120045201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87501148"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120050200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899548251"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120050201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "373932 / TCI-122409"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120050202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000656"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120050203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000655"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120050204" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "6074"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120050205" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "5047"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120050206" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "FMS-50-1050 DALI2 LD"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120050207" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28002371"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LCM-60DA2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120060201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TCI-127409"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120060202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899494206 | OTi DALI 60/220-240/550 D LT2 L"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120060203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003603"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120060204" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "XLC-60-H-DA2SN"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120075200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003203"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120075201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4062172126250 | ETi DALI 75/220-240/1A4 LT2 L"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120075202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000660"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120075203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28004634"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120075204" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000657"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120075205" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "FMS-75-1800 DALI2 LD"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120080200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899028050 | OTi DALI 80/220-240/2A1 LT2 L"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120090200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321867568"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1120100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28001571"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1123007200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17684000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1123009200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17658000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1123012200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "915.019.350 DIG"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1123015200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "89453849-350"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1123017200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "211-003-200"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1123045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "IDLC-45-350DA"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1125045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "3265875 | IDLC-45-500DA"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1127025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899488144 | OTi DALI 25/220-240/700 LT2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1127025201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "89453849-700"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1127030201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17708000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1127030202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LNDC30W700LRP"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1127045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321819192"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1130010200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LUP10-LCPH"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1130021200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500603"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1130044200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500605"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1132012200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "211-A0D-001"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1133007200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17663000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1133010200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17615000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1133010201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TCI127040"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1133018200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17643010"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1133020200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17617000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1140010200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000663"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1140017200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000674"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1140025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000675"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1140025201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000665"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1140030200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-2305-30-CC-MULTIDIM"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1140045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000666"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1140045201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28000676"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1140050200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "367946 DC-MAXI-JOLLY"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1140050201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-2305-50L-CC-MULTIDIM"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1140085200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28002830"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1150050200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-2106-50L-C1000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1160010200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28002411"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1160017200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28002412"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1160032200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "127016"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1160038200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28002858"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1160038203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003716"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1160040200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003057"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1160045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28002414"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1160060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LCM-60BLE"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1160060201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28004619"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1167028200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003715"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1170010200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-9101-10-C500NFC"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1170036200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-9101-36-C1050NFC"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201003200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "358847"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201006201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "375833 / HLV1206L1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201012200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TCI-122740"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201015201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17106000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201016300" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LPF-16-12"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201020600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PLN-20-12"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201025600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LPF-25-12"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201030200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "17110000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201030201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PLC-30-12"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201030202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "113286"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201040600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LPF-40-12"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PLC-45-12"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201050200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SLD-50-12"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PLC-100-12"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201060201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "US-60-12 LI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201070200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4050300442310"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201070201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "363745 / 111213"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201080600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-80H-12A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201084200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "22176410"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "113053"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201105200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4050300442334"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201120200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321790835"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201120600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-120H-12A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201150200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4050300581415"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201150201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "42150e"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-150H-12A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201185600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-185H-12A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201240600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-240H-12A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201320600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-320H-12A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1201600601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-600H-12A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202003200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "358847 - PTDC/3/24V/N"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202005200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "N 215/02"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202006200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "3779779 / HLV2406L1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202006201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SS-6-24 MB"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202008200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321040169"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202010200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "AV24010IP20"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202012200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "373624 TCI-122742"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202015200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "370080"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202015201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "49.15r.24.00"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202016300" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LPF-16-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202018200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87500938"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202018201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SS-18-24 MB"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202019200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "90 FBE024"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202020200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4050300618111 | OT 20/220-240/24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202020201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "76.32726.11"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202020202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "N4343FAH00062"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202020500" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TCI_127328"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202024200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "362208TRA-24V-24W-IS"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202024600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "V TR12-24-1 | 305 804 109"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202025400" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "APV-25-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202025600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LPF-25-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202030200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PLC-30-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202030201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "369052 / TRA-24V-30W"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202030202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899605503 | ELEMENT 30/220-240/24 G2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202030203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LS-30-24 LI EXC"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202030204" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "US-30-24 LR1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202030205" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "5075"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202030600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "358699 TRA-24V-30W-I"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202030601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "KAV-24030-0(W)"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202035200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HS-35-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202035201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87501091"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202036400" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "APV-35-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202040201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "N4343FAH00061"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202040600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LPF-40-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202040601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-40H-24A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202042200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "2868648"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PLC-45-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202050200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899905566"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202050201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SLD-50-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899605527 | ELEMENT 60/220-240/24 G2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PLC-60-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "N4343FAH00060"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HS-60-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060204" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "2868651"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060205" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LS-60-24-LI-EXC"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060206" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87501092"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060207" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "US-60-24 LR2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060208" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "5076"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LPF-60-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202060601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-60H-24A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202070200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TCI 122180 | 386097"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202075200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4050300817477"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202075201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "112023"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202075600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321362476"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202075601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SLT75-24VFC-UN"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202080600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-80H-24A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202090200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899463813"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202090201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "833.77.974"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "US-100-24 LR1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202100201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PLC-100-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202100202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "N4343FAH00015"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202100203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HS-100-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202100204" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "043-024-101"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202100205" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87501093"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202100206" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SLF SLT100-24VFG"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202100600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-100H-24A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202120200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "GST120A24-P1M + NETZKABEL T12-C13"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202120201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899605541 | ELEMENT 120/220-240/24 G2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202120202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LS-120-24 LI1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202120203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "850.00.845"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202120204" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321981707"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202120205" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LS-120-24-LI-EXC"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202120605" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-120H-24A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202130600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899546004 | OT 130/220-240/24 P"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202150201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HS-150-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-150H-24A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202160200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "GST160A24-R7B+St. CH"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202185600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-185H-24A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202200200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HS-200-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202200201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87501053"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202200600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "NPF-200-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202240600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-240H-24A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202240601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321981721"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202250200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HS-250-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202250201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4062172135917 | OT SLIM 250/220-240/24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202320600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-320H-24A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202480600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-480H-24A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1202600600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-600H-24A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1203150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-150H-36A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1204035200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "87501112"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1204150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-150H-48A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1204320600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-320H-48A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1204480600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-480H-48A"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211015200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899905559"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211020200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "3506"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211040600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-40H-12B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211120600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-120H-12B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-150H-12B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211185600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-185H-12B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211240600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-240H-12B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1211320600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-320H-12B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212020200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4050300662626"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "IDLV-25-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212025600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LPF-25D-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212040600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LPF-40D-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212040601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-40H-24B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212040602" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "NPF-40D-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "IDLV-45-24"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "XLC-60-24-BS"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212060600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-60H-24B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212080200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321981677"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212080601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-80H-24B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212100600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-100H-24B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212120200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321981691"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212120601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-120H-24B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-150H-24B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212185600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-185H-24B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212240200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321981714"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212240601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-240H-24B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212320600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-320H-24B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212480600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-480H-24B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1212600600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HLG-600H-24B"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1221060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "XLC-60-12-DA2S"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1221060201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "XLC-60-12-DA2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1221060600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PWM-60-12DA2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1221075600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "ELG-75-12DA-3Y"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222018200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28004434"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222018201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003519"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222020600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HDL-CV-20"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222025201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "9453849-24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222035200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28001662"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222035201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003520"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222035202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28005503"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222035203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28004430"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222040200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "843278"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222040600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HDL-CV-40"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LS-45-24 DALI2 LI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28004431"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222060201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003521"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222060202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LV60W24CG2 DALI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222060203" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28005504"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222060600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PWM-60-24DA2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222060601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "HDL-CV-60"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222060602" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LDM60S"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222060603" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "114942"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222060604" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "XLN-60-24-DA2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222075600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "ELG-75-24DA-3Y"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222090600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PWM-90-24DA2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28004432"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222100201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28001436"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222100202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "MS-100-24-DALI2-LI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222100600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "ELG-100-24DA-3Y"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222150200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28001923"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222150600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "ELG-150-24DA-3Y"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222200200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28004433 Open | 28004438 SP"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222200600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "ELG-200-24DA-3WUSI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222200601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PWM-200-24DA2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222200602" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "AV0D024V20066"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222240600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "ELG-240-24DA-3Y"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222240601" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "114944"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1222250200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LV250W24CG2 DALI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1224035200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003840"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1224100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003535"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1224150200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRPN-2305-150-48V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1224200200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28003536 Open | 28003843 SP"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1224200600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PWM-200-48DA2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1224240200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SPWM-240-48DA2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1224240600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "ELG-240-48DA-3Y"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1231050200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "113928"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1232019200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "45BA66002419"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1232025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "L5202402DT"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1232050200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "113929"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1232060600" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "372718 / 112426"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1241060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "58491 | 3213961"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1242024200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "AL5012"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1242030200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-2305-30-MULTIDIM-24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1242150200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LUP150-LVDA"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1242200200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-TRIAC-200-24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1262035200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28002677"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1262060200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28002674"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1262100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28002675"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1262150200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "28002678"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1272100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRPN-9101-100-24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1310020200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "123400"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1310020201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "125400"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1310025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TRA-MULTI-DIM2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1310035200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TRA-MULTI-DIM-NEW | PTDCMD35"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1320020200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "125403 | 373037"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1320020201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "151395"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1320020202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "151403 | A005145"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1320025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "151140 | A005194"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1320032200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "151424"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1330020200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "127556"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1340032200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "122680"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1340067200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321694317"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1340120200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "59.pwm.24.011"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1402000000" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "TLU20504"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1412120202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "1894848"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1416004200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321292599 | DALI REP LI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1421100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRPN-9101-100-TW-24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1421100201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRPN-9105-100-TW-24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422009200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "915.031.500 DT8"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422015201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "6937186150189 | OTi DALI 15/220-240/1A0 NFC TW I"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422025200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRPY-2309N-25CCT300-850"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422030200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-2309-30-TW-CC"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422045200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LS-45-24 DALI2-DT8 LI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422050200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899490772"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422050201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-2309-50-TW-CC"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422075200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "EULP75D-2H24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422075201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-2309-75-TW-CC"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422080200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899490758"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422080201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRPL-2309N-80CCT1000-2000"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422080202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LS-80-24 DALI2-DT8 LI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRPN-2309-100-TW-24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422150200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LS-150-24 DALI2-DT8 LI"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1422160200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899986329"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1431080200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321808363"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1432050200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PW0562A1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1441100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRPN-9101-100-RGBW-24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442000200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "ABB BE/S 4.20.2.1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442000201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "N 141/31"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442030200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRPL-2305N-30CC250-850"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442050200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899452916"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442050201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PW0561A1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442050202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PW50SA-M4Z0X1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442075200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321371560"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442075201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-2309-75-PRO-24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442075202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-2309-75-PRO-CC"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442080200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4052899452893"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442080201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4062172046558"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442100200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LIN100A1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442100201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LIN100S1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442100202" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PW1060A1"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442120200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-2309-120-PRO-24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442150200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRPN-2309-150-RGBW-24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442180200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LIN180D3"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442180201" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "PWR180D2"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442200200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "SRP-2309-200-PRO-24V"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1442720200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "LIN720D3"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1443000000" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321053152"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1443000001" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321421739"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1446000200" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "DAP-04-S01"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1447000000" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4050300803135 | Y-CONNECTOR MULTI3"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="1447000001" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "4008321053138"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="2175001000" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "DS-W-GR6D-50W-300-1050-F"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="2175002000" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "DS-B-GR6D-50W-350-1050-F"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="2185001000" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "DS-W-GR6D-50W-300-1050-D"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="2185002000" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "DS-B-GR6D-50W-350-1050-D"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="8810000023" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "305-409-212 | MKC8 ER-F/R EB1-SC LED"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="8810000024" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "305-409-042 | MKC5 80-PC ER-F EB1-SC LED"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="8811000010" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "300-409-201 | MKC8 ER-F/R LED"
fi
PRODUCT_ID=$(wp --allow-root post list --post_type=product --meta_key=_sku --meta_value="8890003000" --field=ID 2>/dev/null)
if [ -n "$PRODUCT_ID" ]; then
  wp --allow-root post meta update $PRODUCT_ID manufacturer_part_number "361-503-002 USET EB-SC LED 8+8"
fi

echo "Done. Updated 124 manufacturer names and 495 part numbers."
