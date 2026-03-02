# Homework 1 Solutions

### Q1
```bash
mkdir homework-01
cd homework-01
```

### Q2
```bash
ls | wc -l
```

### Q3
```bash
cat -n words | grep 55000 -w
```

### Q4
```bash
cat -n words | grep 55000 -w | cut -f 2 | cat -etv
cat -n words | grep 55000 -w | cut -f 2 | wc -c
cat -n words | grep 55000 -w | cut -f 2 | tr -d '\n' | wc -c
```

### Q5
```bash
grep -v "#" human.genes.gtf | wc -l
```

### Q6
```bash
grep -v "#" human.genes.gtf | grep "gene_biotype \"protein_coding\"" | wc -l
```

### Q7
```bash
# First attempt (wrong — grep -w "exon" can match in other fields):
grep -v "#" human.genes.gtf | grep "gene_biotype \"protein_coding\"" | grep -w "exon" | wc -l

# Correct — isolate the feature column first:
grep -v "#" human.genes.gtf | grep "gene_biotype \"protein_coding\"" | cut -f 3 | grep "exon" | wc -l
```

### Q8
```bash
grep -v "#" human.genes.gtf | grep "gene_biotype \"protein_coding\"" | cut -f 1,3 | grep "CDS" | uniq -c
```

### Q9
```bash
grep -v "#" human.genes.gtf | grep -v "gene_biotype \"protein_coding\"" | cut -f 9 | head
```
