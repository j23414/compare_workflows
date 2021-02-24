# test_snakemake

Snakemake is a python program and can be installed via miniconda using the provided `environment.yml` file.

```
conda env create -f environment.yml
conda activate snakeskin
```

Create `snake_say_hi.txt`

```
rule all:
  input: "hello_world.txt"

rule hello_world:
  output: "hello_world.txt"
  shell: "echo Hello World > hello_world.txt"
```

It looks basically like a Makefile. Run it via:

```
snakemake --snakefile snake_say_hi.txt -j1
```

which gives:

```
Building DAG of jobs...
Using shell: /bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	all
	1	hello_world
	2
Select jobs to execute...

[Wed Feb  3 17:49:58 2021]
rule hello_world:
    output: hello_world.txt
    jobid: 1

[Wed Feb  3 17:49:58 2021]
Finished job 1.
1 of 2 steps (50%) done
Select jobs to execute...

[Wed Feb  3 17:49:58 2021]
localrule all:
    input: hello_world.txt
    jobid: 0

[Wed Feb  3 17:49:58 2021]
Finished job 0.
2 of 2 steps (100%) done
Complete log: /Users/jenchang/Desktop/2021-02-03_Snakemake/test_snakemake/.snakemake/log/2021-02-03T174958.315655.snakemake.log
```

## Compare Nextflow & Snakemake

Recreate nextflow baton example here.

We define 5 processes (nextflow) or rules (snakemake) that pass a text file from Amy to Eve. 

```
Amy -> Bob -> Cathy -> Dave -> Eve
```

----

### (1 of 2) Nextflow dsl1
<!--e<details><summary>Nextflow version dsl=1 - DONE</summary> -->

Copied from [https://github.com/j23414/desc_workflows](https://github.com/j23414/desc_workflows)


Instead of worrying about installing a long running program, we’ll
simulate it using the `sleep 5` command (wait 5 seconds).

```

    #! /usr/bin/env nextflow

    /**********************************
     Create a chain of long running processes
     This basically simulates trinity/canu/whatever pipeline
     **********************************/


    println "\nPipeline = Amy -> Bob -> Cathy -> Dave -> Eve"
    println " where each person runs 5 seconds to pass the baton to next person\n"

    process Amy {
      output: stdout Amy_out

      script:
      """
      #! /usr/bin/env bash
      sleep 5                    # <= pause for a few seconds
      echo "Amy passes baton"
      """
    }

    process Bob {
      input: val baton_in from Amy_out
        
      output: stdout Bob_out

      script:
      """
      #! /usr/bin/env bash
      sleep 5                    # <= pause for a few seconds
      echo "$baton_in; Bob passes baton"
      """
    }

    process Cathy {
      input: val baton_in from Bob_out
        
      output: stdout Cathy_out

      script:
      """
      #! /usr/bin/env bash
      sleep 5                    # <= pause for a few seconds
      echo "$baton_in; Cathy passes baton"
      """
    }

    process Dave {
      input: val baton_in from Cathy_out
        
      output: stdout Dave_out

      script:
      """
      #! /usr/bin/env bash
      sleep 5                    # <= pause for a few seconds
      echo "$baton_in; Dave passes baton"
      """
    }

    process Eve {
      input: val baton_in from Dave_out
        
      output: stdout Eve_out

      script:
      """
      #! /usr/bin/env bash
      sleep 5                    # <= pause for a few seconds
      echo "$baton_in; Eve passes baton"
      """
    }

    println Eve_out.view { it.trim() }
```

Which looks nice in bash… as it prints progress

```
    N E X T F L O W  ~  version 20.04.1
    Launching `code/script06.nf` [crazy_mclean] - revision: c6a509673f

    Pipeline = Amy -> Bob -> Cathy -> Dave -> Eve
     where each person runs 5 seconds to pass the baton to next person

    DataflowVariable(value=null)
    executor >  local (2)
    [ee/41b22c] process > Amy   [100%] 1 of 1 ✔
    [cf/db02ae] process > Bob   [  0%] 0 of 1
    [-        ] process > Cathy -
    [-        ] process > Dave  -
    [-        ] process > Eve   -
```

Eventually looks like the following when finished:

```
    nextflow run script06.nf
    N E X T F L O W  ~  version 20.04.1
    Launching `code/script06.nf` [crazy_mclean] - revision: c6a509673f

    Pipeline = Amy -> Bob -> Cathy -> Dave -> Eve
     where each person runs 5 seconds to pass the baton to next person

    DataflowVariable(value=null)
    executor >  local (5)
    [ee/41b22c] process > Amy   [100%] 1 of 1 ✔
    [cf/db02ae] process > Bob   [100%] 1 of 1 ✔
    [b0/cccd94] process > Cathy [100%] 1 of 1 ✔
    [9f/a652c6] process > Dave  [100%] 1 of 1 ✔
    [ca/39a72a] process > Eve   [100%] 1 of 1 ✔
    Amy passes baton
    ; Bob passes baton
    ; Cathy passes baton
    ; Dave passes baton
    ; Eve passes baton
```

And if you run it with the html reports turned on:

```
    nextflow run script06.nf -with-timeline timeline.html
```

It will also generate a plot:

<img src="https://raw.githubusercontent.com/j23414/desc_workflows/master/imgs/timeline.png" />

----

### (2 of 2) Snakemake version

<b>pass_baton.txt</b>

```
rule all:
  input: "Eve_baton.txt"

rule Eve:
  input: "Dave_baton.txt"
  output: "Eve_baton.txt"
  shell: "cat {input} > {output}; echo 'Eve passes baton' >> {output};"

rule Dave:
  input: "Cathy_baton.txt"
  output: "Dave_baton.txt"
  shell: "cat {input} > {output}; echo 'Dave passes baton' >> {output};"

rule Cathy:
  input: "Bob_baton.txt"
  output: "Cathy_baton.txt"
  shell: "cat {input} > {output}; echo 'Cathy passes baton' >> {output};"

rule Bob:
  input: "Amy_baton.txt"
  output: "Bob_baton.txt"
  shell: "cat {input} > {output}; echo 'Bob passes baton' >> {output};"

rule Amy:
  output: "Amy_baton.txt"
  shell: "echo 'Amy passes baton' > {output}"
```

Run it below:

```
snakemake --snakefile pass_baton.txt -j1
Building DAG of jobs...
Using shell: /bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job counts:
	count	jobs
	1	Amy
	1	Bob
	1	Cathy
	1	Dave
	1	Eve
	1	all
	6
Select jobs to execute...

[Tue Feb 23 17:47:02 2021]
rule Amy:
    output: Amy_baton.txt
    jobid: 5

[Tue Feb 23 17:47:03 2021]
Finished job 5.
1 of 6 steps (17%) done
Select jobs to execute...

[Tue Feb 23 17:47:03 2021]
rule Bob:
    input: Amy_baton.txt
    output: Bob_baton.txt
    jobid: 4

[Tue Feb 23 17:47:03 2021]
Finished job 4.
2 of 6 steps (33%) done
Select jobs to execute...

[Tue Feb 23 17:47:03 2021]
rule Cathy:
    input: Bob_baton.txt
    output: Cathy_baton.txt
    jobid: 3

[Tue Feb 23 17:47:03 2021]
Finished job 3.
3 of 6 steps (50%) done
Select jobs to execute...

[Tue Feb 23 17:47:03 2021]
rule Dave_baton:
    input: Cathy_baton.txt
    output: Dave_baton.txt
    jobid: 2

[Tue Feb 23 17:47:03 2021]
Finished job 2.
4 of 6 steps (67%) done
Select jobs to execute...

[Tue Feb 23 17:47:03 2021]
rule Eve_baton:
    input: Dave_baton.txt
    output: Eve_baton.txt
    jobid: 1

[Tue Feb 23 17:47:03 2021]
Finished job 1.
5 of 6 steps (83%) done
Select jobs to execute...

[Tue Feb 23 17:47:03 2021]
localrule all:
    input: Eve_baton.txt
    jobid: 0

[Tue Feb 23 17:47:03 2021]
Finished job 0.
6 of 6 steps (100%) done
Complete log: /Users/jenchang/Desktop/ttt/test_snakemake/.snakemake/log/2021-02-23T174702.949455.snakemake.log

less Eve_baton.txt

#> Amy passes baton
#> Bob passes baton
#> Cathy passes baton
#> Dave passes baton
#> Eve passes baton
```

Maybe there's a similar way to print out a timeline in Snakemake? Ah, found it.

```
snakemake --dag Eve_baton.txt --snakefile pass_baton.txt | dot -Tpng > dag.png
```

![](dag.png)

----
 
### Extra, Nextflow DSL2

Create `next_baton.nf` in DSL2 style

```
#! /usr/bin/env nextflow

nextflow.enable.dsl=2


/**********************************
 Create a chain of long running processes
 This basically simulates trinity/canu/whatever pipeline
 **********************************/


println "\nPipeline = Amy -> Bob -> Cathy -> Dave -> Eve"
println " where each person runs 5 seconds to pass the baton to next person\n"

process Amy {
  output: stdout

  script:
  """
  #! /usr/bin/env bash
  sleep 5                    # <= pause for a few seconds
  echo "Amy passes baton"
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
  Amy | Bob | Cathy | Dave | Eve | view
}

```

Run `next_baton.nf`, notice section `workflow`... this is the main addition of DSL2. We could reorganize that pipeline to it went from `Amy | Dave | Bob | Eve | view`, etc. In the original DSL1, inputs were labled, so we couldn't change order.

```
nextflow run next_baton.nf

N E X T F L O W  ~  version 20.07.1
Launching `next_baton.nf` [sharp_agnesi] - revision: 6c35007a22

Pipeline = Amy -> Bob -> Cathy -> Dave -> Eve
 where each person runs 5 seconds to pass the baton to next person

executor >  local (5)
[64/1713d1] process > Amy   [100%] 1 of 1 ✔
[10/c670da] process > Bob   [100%] 1 of 1 ✔
[f2/4d2032] process > Cathy [100%] 1 of 1 ✔
[91/c60628] process > Dave  [100%] 1 of 1 ✔
[d7/61db2e] process > Eve   [100%] 1 of 1 ✔
Amy passes baton
; Bob passes baton
; Cathy passes baton
; Dave passes baton
; Eve passes baton

```

## CWL - common workflow language

* install via miniconda (based on [github: cwl](https://github.com/common-workflow-language/cwltool)).

[cwl_env.yml](cwl_env.yml)

```
name: cwl_env
channels:
  - conda-forge
  - bioconda
  - defaults
dependencies:
  - python=3.8
  - cwltool
```

* run 

```
conda env create -f cwl_env.yml
```

CWL needs two files, a cwl and a process file... in progress

* [CWL Manual]()

```
conda activate cwl_env
cwltool --version            # <= check if it works, other documentation seems to call this cwl-runner...
```
