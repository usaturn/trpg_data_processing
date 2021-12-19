#!/usr/bin/bash

kzm_data="${1%.*}"
awk --re-interval -f kzm/convert_gino_txt2tsv.awk $1 > ${kzm_data}.tsv
