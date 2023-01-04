version 1.0

workflow All_Workflow {
  call Amy {}
  call Bob {
    input:
      infile=Amy.outfile
  }
  call Cathy {
    input:
      infile=Bob.outfile
  }
  call Dave {
    input:
      infile=Cathy.outfile
  }
  call Eve {
    input:
      infile=Dave.outfile
  }

  output{
    File outfile=Eve.outfile
  }
}

task Amy {
  command <<<
    #! /usr/bin/env bash
    sleep 5
    echo 'Amy passes baton' > Amy_baton.txt
  >>>
  output {
    File outfile="Amy_baton.txt"
  }
  runtime{
    docker: 'ubuntu'
    cpu : 4
    memory: '4 GiB'
    disks: 'local-disk 30 HDD'
  }
}

task Bob {
  input {
    File infile
  }
  command <<<
    #! /usr/bin/env bash
    sleep 5
    cat ~{infile} > Bob_baton.txt
    echo 'Bob passes baton' >> Bob_baton.txt
  >>>
  output {
    File outfile="Bob_baton.txt"
  }
  runtime{
    docker: 'ubuntu'
    cpu : 4
    memory: '4 GiB'
    disks: 'local-disk 30 HDD'
  }
}

task Cathy {
  input {
    File infile
  }
  command <<<
    #! /usr/bin/env bash
    sleep 5
    cat ~{infile} > Cathy_baton.txt
    echo 'Cathy passes baton' >> Cathy_baton.txt
  >>>
  output {
    File outfile="Cathy_baton.txt"
  }
  runtime{
    docker: 'ubuntu'
    cpu : 4
    memory: '4 GiB'
    disks: 'local-disk 30 HDD'
  }
}

task Dave {
  input {
    File infile
  }
  command <<<
    #! /usr/bin/env bash
    sleep 5
    cat ~{infile} > Dave_baton.txt
    echo 'Dave passes baton' >> Dave_baton.txt
  >>>
  output {
    File outfile="Dave_baton.txt"
  }
  runtime{
    docker: 'ubuntu'
    cpu : 4
    memory: '4 GiB'
    disks: 'local-disk 30 HDD'
  }
}

task Eve {
  input {
    File infile
  }
  command <<<
    #! /usr/bin/env bash
    sleep 5
    cat ~{infile} > Eve_baton.txt
    echo 'Eve passes baton' >> Eve_baton.txt
  >>>
  output {
    File outfile="Eve_baton.txt"
  }
  runtime{
    docker: 'ubuntu'
    cpu : 4
    memory: '4 GiB'
    disks: 'local-disk 30 HDD'
  }
}
