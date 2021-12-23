#!/bin/gawk
# awk --re-interval -f lrq/lrq-sogu-gadget-social-maeshori.awk

BEGIN{
    RS="@"
}

NR!=1{
    koka=""
    for(i=3; i<=NF; i++){
        gsub(/\n/, "", $i)
        koka=koka$i
        }
        printf("@\n%s\n%s\n%s\n", $1, $2, koka)
}
