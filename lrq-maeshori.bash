#!/usr/bin/bash

lrq_data="${1%.*}"
awk --re-interval -f lrq/lrq-maeshori.awk $1 | awk --re-interval -f lrq/lrq-koka.awk | awk --re-interval -f lrq/lrq-after.awk > ${lrq_data}_2.txt
