#!/usr/bin/bash

kzm_data="${1%.*}"
awk --re-interval -f kzm/kzm-maeshori.awk $1 | awk --re-interval -f kzm/kzm-koka.awk | awk --re-interval -f kzm/kzm-after.awk > ${kzm_data}2.txt
