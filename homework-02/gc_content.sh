grep -v "<" chr22.fa| grep -o --color "[C|G|c|g]" | sort | uniq -c
