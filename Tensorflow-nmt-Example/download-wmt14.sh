#!/bin/sh
# Download small-scale IWSLT15 Vietnames to English translation data for NMT
# model training.
#
# Usage:
#   ./download_wmt14.sh path-to-output-dir
#
# If output directory is not specified, "./wmt14" will be used as the default
# output directory.
OUT_DIR="${1:-wmt14}"
SITE_PREFIX="https://nlp.stanford.edu/projects/nmt/data"

mkdir -v -p $OUT_DIR

# Download iwslt15 small dataset from standford website.
echo "Download training dataset train.en and train.de."

curl -o "$OUT_DIR/train.en" "$SITE_PREFIX/wmt14.en-de/train.en"
curl -o "$OUT_DIR/train.de" "$SITE_PREFIX/wmt14.en-de/train.de"


echo "Download dev dataset tst2012.en and tst2012.de."
curl -o "$OUT_DIR/tst2012.en" "$SITE_PREFIX/wmt14.en-de/newstest2012.en"
curl -o "$OUT_DIR/tst2012.de" "$SITE_PREFIX/wmt14.en-de/newstest2012.de"

echo "Download test dataset tst2013.en and tst2013.de."
curl -o "$OUT_DIR/tst2013.en" "$SITE_PREFIX/wmt14.en-de/newstest2013.en"
curl -o "$OUT_DIR/tst2013.de" "$SITE_PREFIX/wmt14.en-de/newstest2013.de"

echo "Download vocab file vocab.en and vocab.de."
curl -o "$OUT_DIR/vocab.50k.en" "$SITE_PREFIX/wmt14.en-de/vocab.50k.en"
curl -o "$OUT_DIR/vocab.50k.de" "$SITE_PREFIX/wmt14.en-de/vocab.50k.de"

