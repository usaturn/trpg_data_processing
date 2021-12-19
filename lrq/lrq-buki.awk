#!/bin/gawk
# awk --re-interval -f lrq/lrq-buki.awk

BEGIN{
    RS="@"
}

NR!=1{
    koka=""
    for(i=4; i<=NF; i++){
        gsub(/\n/, "", $i)
        koka=koka$i
        }
        printf("@\n%s\n%s\n%s\n%s\n", $1, $2, $3, koka)
}
