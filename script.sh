#!/bin/bash
downoload=$(fastq-dump -Z ERR1831799 > not_clean_.fq)
echo "fastq_file $downoload"
report=$(fastqc not_clean_.fq )
echo "html_report $report" 

