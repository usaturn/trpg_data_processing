#!/bin/gawk
# awk --re-interval -f convert_style.awk

BEGIN{
    RS="@"
}
{
    split($1, item_name, ":")
    gsub("^購:|携:|/", "\t", $2)
    KONYU_KETAI=gensub(/^(.+)(S+|M+|L+)([0-9])/, "\\1\\2\t\\3", "g", $2)
    gsub("^攻:", "", $3)
    KOGEKIRYOKU=gensub(/^(内|外)\+([0-9]+)/, "\t\\1\t\\2", "g", $3)
    gsub("^射:|部位:", "\t", $4)
    gsub("^解説:", "\t", $5)
    printf "%s\t%s%s%s%s%s\n", item_name[1], item_name[2] , KONYU_KETAI, KOGEKIRYOKU, $4, $5
}
