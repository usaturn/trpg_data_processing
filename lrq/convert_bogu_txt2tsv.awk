#!/bin/gawk
# awk --re-interval -f convert_style.awk

BEGIN{
    RS="@"
}
{
    split($1, item_name, ":")
    gsub("^購:|携:|/", "\t", $2)
    KONYU_KETAI=gensub(/^(.+)(S+|M+|L+)([0-9])/, "\\1\\2\t\\3", "g", $2)
    gsub(/^防\(外\/内\/心\):/, "", $3)
    split($3, GARD_VALUE, "/")
    gsub("^部位:", "\t", $4)
    gsub("^解説:", "\t", $5)
    printf "%s\t%s%s\t%s\t%s\t%s%s%s\n", item_name[1], item_name[2] , KONYU_KETAI, GARD_VALUE[1], GARD_VALUE[2], GARD_VALUE[3], $4, $5
}
