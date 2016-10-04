# snpannotools
http://snpeff.sourceforge.net/

SnpEff
Genetic variant annotation and effect prediction toolbox. It annotates and predicts the effects of variants on genes (such as amino acid changes). 
Features:

Supports over 38,000 genomes.
Standard ANN annotation format
Cancer variants analysis
GATK compatible (-o gatk)
HGVS notation
Sequence Ontology standardized terms
View details »

Version 4.2
Features:

Protein interaction loci annotations (from PDB)
SnpEff: Faster search algorithm
SnpSift 'annotate': Improved annotaions (by variant analysis) and faster index (*.sidx)
SnpSift 'dbNSFP': Improved annotaionas/index and data types inference
HGVS with full transcript IDs
View details »

SnpSift
SnpSift helps filtering and manipulating genomic annotated files (VCF). Once you annotated your files using SnpEff, you can use SnpSift to help you filter large genomic datasets in order to find the most significant variants


https://github.com/brentp/vcfanno


vcfanno annotates a VCF with any number of sorted and tabixed input BED, BAM, and VCF files in parallel. It does this by finding overlaps as it streams over the data and applying user-defined operations on the overlapping annotations.

In order to parallelize, work is broken down as follows. A slice (array) of query intervals is accumulated until a specified number is reached (usually ~5K-25K) or a gap cutoff is exceeded; at that point, the bounds of the region are used to perform a tabix (or any regional) query on the database files. This is all done in irelate. vcfanno then iterates over the streams that result from the tabix queries and finds intersections with the query stream. This is a parallel chrom-sweep. This method avoids problems with chromosome order.

For VCF, values are pulled by name from the INFO field. For BED, values are pulled from (1-based) column number. For BAM, depth (count), "mapq" and "seq" are currently supported.

vcfanno is written in go and it supports custom user-scripts written in lua. It can annotate more than 8,000 variants per second with 34 annotations from 9 files on a modest laptop and over 30K variants per second using 12 processes on a server.
