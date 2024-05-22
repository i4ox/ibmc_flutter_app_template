#!/usr/bin/env bash

if [ "$(basename "$PWD")" = 'scripts' ]; then cd ..; fi

FS=$'\n'; set -f
for f in $(find lib -name '*.dart'); do
  echo $f;
  sed -i 's/ibmc_blood_metabograms/kmk_viewer/g' $f
done
unset IFS; set +f
