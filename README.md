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

Recreate nextflow baton example here.
