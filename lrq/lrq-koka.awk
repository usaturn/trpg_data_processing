#!/bin/gawk
# awk --re-interval -f lr-koka.awk

BEGIN{
    RS="@"
}

NR!=1{
    koka=""
    for(i=5; i<=NF; i++){
        gsub(/\n/, "", $i)
        koka=koka$i
        }
        printf("@\n%s\n%s\n%s\n%s\n%s\n", $1, $2, $3, $4, koka)
}
