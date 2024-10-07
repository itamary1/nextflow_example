
process splitLetters {
  input:
    val in_str
  output:
    path 'chunk_*'

  """
  printf '$in_str' | split -b 6 - chunk_
  """
}

process convertToUpper {
  input:
    path x
  output:
    stdout

  """
  cat $x | tr '[a-z]' '[A-Z]'
  """
}

workflow {
  println "Example string: ${params.processed_str}"
  // create a channel of splitted letters files from the input string
  str_splitted = splitLetters(params.processed_str).flatten()
  // str_splitted.view()
  // convert the splitted letters to uppercase
  convertToUpper(str_splitted)
  convertToUpper.out.view()

  // splitLetters(${params.example_str}) | flatten | convertToUpper | view { it }
}