#!/bin/gawk
# awk --re-interval -f convert_style.awk

BEGIN{
    RS="@"
}
{
    split($1, gino_name, ":")
    gsub("/^(レベル:[1-9]|奥義)/", "\t", $2)
    gsub("^タイミング:", "\t", $3)
    gsub("^対象:|射程:", "\t", $4)
    gsub("^代償:", "\t", $5)
    gsub("^効果:", "\t", $6)
    printf "%s\t%s\t%s%s%s%s%s\n", gino_name[1], gino_name[2] ,$2, $3, $4, $5, $6
}
