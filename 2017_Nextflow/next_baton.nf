#! /usr/bin/env nextflow

nextflow.enable.dsl=2


/**********************************
 Create a chain of long running processes
 This basically simulates trinity/canu/whatever pipeline
 **********************************/


println "\nPipeline = Alice -> Bob -> Cathy -> Dave -> Eve"
println " where each person runs 5 seconds to pass the baton to next person\n"

process Alice {
  //output: stdout
  output: path("Alice_baton.txt")

  script:
  """
  #! /usr/bin/env bash
  sleep 5                    # <= pause for a few seconds
  echo "Alice passes baton" > Alice_baton.txt
  """
}

process Bob {
  //input: val baton_in
  input: path(baton_in)
  //output: stdout
  output: path("Bob_baton.txt")

  script:
  """
  #! /usr/bin/env bash
  sleep 5                    # <= pause for a few seconds
  cat $baton_in > Bob_baton.txt
  echo "Bob passes baton" >> Bob_baton.txt
  """
}

process Cathy {
  //input: val baton_in
  input: path(baton_in)
    
  //output: stdout
  output: path("Cathy_baton.txt")

  script:
  """
  #! /usr/bin/env bash
  sleep 5                    # <= pause for a few seconds
  cat $baton_in > Cathy_baton.txt
  echo "Cathy passes baton" >> Cathy_baton.txt
  """
}

process Dave {
  //input: val baton_in
  input: path(baton_in)
    
  //output: stdout
  output: path("Dave_baton.txt")

  script:
  """
  #! /usr/bin/env bash
  sleep 5                    # <= pause for a few seconds
  cat $baton_in > Dave_baton.txt
  echo "Dave passes baton" >> Dave_baton.txt
  """
}

process Eve {
  //input: val baton_in
  input: path(baton_in)
    
  //output: stdout
  output: path("Eve_baton.txt")

  script:
  """
  #! /usr/bin/env bash
  sleep 5                    # <= pause for a few seconds
  cat $baton_in > Eve_baton.txt
  echo "Eve passes baton" >> Eve_baton.txt
  """
}

/* === Main workflow */
workflow {
  Alice | Bob | Cathy | Dave | Eve | view
}