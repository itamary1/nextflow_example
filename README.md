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
nextflow -c ./my_simple_config.config run ./simple_with_config.nf -profile adar


nextflow run QC.nf
nextflow run QC.nf --reads 'data/*_{1,2}.fq'