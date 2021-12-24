#!/bin/gawk
# awk --re-interval -f convert_style.awk

BEGIN{
    RS="@"
}
{
    split($1, item_name, ":")
    gsub("^購:|携:|/", "\t", $2)
    KONYU_KETAI=gensub(/^(.+)(S+|M+|L+)([0-9])/, "\\1\\2\t\\3", "g", $2)
    gsub("^部位:", "\t", $3)
    gsub("^解説:", "\t", $4)
    printf "%s\t%s%s%s%s\n", item_name[1], item_name[2] , KONYU_KETAI, $3, $4
}
