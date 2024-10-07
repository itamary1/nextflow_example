
/*
 * pipeline input parameters
 */
params.reads = "data/gut_{1,2}.fq"
params.multiqc_path= "/home/alu/kobish/MULTIQC/multiqc/multiqc"
params.outdir = "results"

log.info """\
        A M A Z I N G   P I P E L N E  -  NF
        ===================================
        TODO write some explaning
        """
        .stripIndent()

def helpMessage() {
    log.info """\
             HELP!!!!
            ===================================
            TODO write some explaning
            """
            .stripIndent()

}



process FASTQC {

    input:
    tuple val(sample_id), path(reads)

    output:
    path "fastqc_${sample_id}_logs"

    script:
    """
    mkdir fastqc_${sample_id}_logs
    fastqc -o fastqc_${sample_id}_logs -f fastq -q ${reads}
    """
}


process MULTIQC {
    publishDir params.outdir, mode:'copy'

    input:
    path '*'

    output:
    path 'multiqc_report.html'

    script:
    """
    $params.multiqc_path --in_dir .
    """
}

workflow {
    read_pairs_ch=Channel.fromFilePairs(params.reads, checkIfExists: true)     
    fastqc_ch = FASTQC(read_pairs_ch)
    MULTIQC(fastqc_ch.collect())
}