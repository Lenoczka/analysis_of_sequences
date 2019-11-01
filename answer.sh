#!/bin/bash
downoload=$(fastq-dump -Z ERR1831799 > not_clean_.fq)
echo "fastq_file $downoload"
report=$(fastqc not_clean_.fq )
echo "html_report $report"
clean=$(cutadapt  not_clean_.fq -q20 > clean_quality.fq )
echo "quality_cleaning $clean"
report1=$(fastqc clean_quality.fq )
echo "html1_report $report1"
 # GC conten файла clean_quality.fq  обработала до интервала в 55-60% в веб-интерфейсе программы PRINSEQ  и сохранила к себе на пк отчёт clean_quality_good.fq
report2=$(fastqc clean_quality_good.fq )
echo "html2_report $report2"
# файл был почищен от ридов с прочтённым качеством меньше 20 и были убраны контаминационные риды, GC content  которых не попал в интервал 55-60%; значит остались хорошие данные, с которыми теперь можно работать


