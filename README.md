# nextflow_example
repo with example of nextflow for our lab meeting

# instructions:
run on your terminal:
cd nextflow_example;  sh ./setup.sh
// script
nextflow run simple.nf
nextflow run simple.nf --example_str 'Hello Levinon Lib!’ 
// config:
nextflow run ./simple_with_config.nf
nextflow -c ./my_simple_config.config run ./simple_with_config.nf
nextflow -c ./my_simple_config.config run ./simple_with_config.nf -profile apobec
// run in background 
nohup nextflow -bg -c ./my_simple_config.config run ./simple_with_config.nf -profile adar &> run.out.txt &



A. 
    Open:
        /home/alu/twerski/Scripts/Nextflow/Levanon_lab_NEXTFLOW_PIPELINE/Configs/Docker/SubP_configs/quality_check.nf.docker.config
        /home/alu/twerski/Scripts/Nextflow/Levanon_lab_NEXTFLOW_PIPELINE/Subpipelines/quality_check.nf
    Run on /home/alu/twerski/temp/nextflow_example_new/nextflow_example/data/For_subpiplines/*fastq 

B. 
    Open:
        /home/alu/twerski/Scripts/Nextflow/Levanon_lab_NEXTFLOW_PIPELINE/Configs/Docker/SubP_configs/fastp.new.nf.docker.config
        /home/alu/twerski/Scripts/Nextflow/Levanon_lab_NEXTFLOW_PIPELINE/Subpipelines/fastp.nf
    Run on /home/alu/twerski/temp/nextflow_example_new/nextflow_example/data/For_subpiplines/*fastq

C.
    Open:
        /home/alu/twerski/Scripts/Nextflow/Levanon_lab_NEXTFLOW_PIPELINE/Configs/Docker/SubP_configs/star.nf.docker.config
        /home/alu/twerski/Scripts/Nextflow/Levanon_lab_NEXTFLOW_PIPELINE/Subpipelines/star.nf
    Run on /home/alu/twerski/temp/nextflow_example_new/nextflow_example/data/For_subpiplines/*fastq
D. Open:
        /home/alu/twerski/Scripts/Nextflow/Levanon_lab_NEXTFLOW_PIPELINE/Configs/Docker/downloadAndPreprocess.nf.docker.config
        /home/alu/twerski/Scripts/Nextflow/Levanon_lab_NEXTFLOW_PIPELINE/downloadAndPreprocess.nf
    Run on /home/alu/twerski/temp/nextflow_example_new/nextflow_example/data/For_downloadAndPreprocess/* (note that star is not part of this pipline)

