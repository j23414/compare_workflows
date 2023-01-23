#! /usr/bin/env nextflow

nextflow.enable.dsl=2


/**********************************
 Create a chain of long running processes
 This basically simulates trinity/canu/whatever pipeline
 **********************************/


println "\nPipeline = Alice -> Bob -> Cathy -> Dave -> Eve"
println " where each person runs 5 seconds to pass the baton to next person\n"

process Alice {
  output: stdout

  script:
  """
  #! /usr/bin/env bash
  sleep 5                    # <= pause for a few seconds
  echo "Alice passes baton"
  """
}

process Bob {
  input: val baton_in
    
  output: stdout

  script:
  """
  #! /usr/bin/env bash
  sleep 5                    # <= pause for a few seconds
  echo "$baton_in; Bob passes baton"
  """
}

process Cathy {
  input: val baton_in
    
  output: stdout

  script:
  """
  #! /usr/bin/env bash
  sleep 5                    # <= pause for a few seconds
  echo "$baton_in; Cathy passes baton"
  """
}

process Dave {
  input: val baton_in
    
  output: stdout

  script:
  """
  #! /usr/bin/env bash
  sleep 5                    # <= pause for a few seconds
  echo "$baton_in; Dave passes baton"
  """
}

process Eve {
  input: val baton_in
    
  output: stdout

  script:
  """
  #! /usr/bin/env bash
  sleep 5                    # <= pause for a few seconds
  echo "$baton_in; Eve passes baton"
  """
}

/* === Main workflow */
workflow {
  Alice | Bob | Cathy | Dave | Eve | view
}