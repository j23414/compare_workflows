# 2012 Snakemake

```
snakemake -j1        # <= will automatically look for a snakefile
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
