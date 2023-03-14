# nextflow_example
repo with example of nextflow for our lab meeting

# instructions:
run on your terminal:
"chmod 744 ./setup.sh"
"./setup.sh"
"export JAVA_CMD=/private/common/Software/Java/jdk-11.0.2/bin/java"

for runing the example use:
"./nextflow run simple.nf"
./nextflow run QC.nf
./nextflow run QC.nf --reads 'data/*_{1,2}.fq'