#!/usr/bin/bash

lrq_data="${1%.*}"
awk --re-interval -f lrq/convert_sogu_gadget_social_txt2tsv.awk $1 > ${lrq_data}.tsv
