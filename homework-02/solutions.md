# Homework 2 Solutions

### Q1
```bash
grep -v "<" chr22.fa | grep -o "[C|G|c|g]" | sort | uniq -c
```

### Q2
```bash
bash gc_content.sh
# Output:
# 4524380 C
# 4521583 G
# 4636273 c
# 4724603 g
```

### Q3
```bash
grep -v "#" human.genes.gtf | grep "gene_biotype \"protein_coding\"" | cut -f 1,3 | grep "CDS" | sort | uniq -c
```

### Q4
```bash
grep -n -o "[C|c]" chr22.fa | sort -n | uniq -c | sort -n | grep -w "15" | wc -l
```

### Q5
```bash
grep -n -o "[C|c]" chr22.fa | sort -n | uniq -c | sort -n | grep -Ewv "([0-9]|1[0-4])" | wc -l
```

### Q6
```bash
# Total non-header characters (minus newlines):
echo $(($(grep -v ">" chr22.fa | wc -c) - $(grep -v ">" chr22.fa | wc -l)))

# Count N bases:
grep -o "[N|n]" chr22.fa | wc -l
```

### Q7
```bash
grep -o "[Aa][Aa][Gg][Cc][Tt][Tt]" chr22.fa | wc -l
```
