# 2012 Snakemake

```
snakemake -j1        # <= will automatically look for a snakefile
Building DAG of jobs...
Using shell: /bin/bash
Provided cores: 1 (use --cores to define parallelism)
Rules claiming more threads will be scaled down.
Job stats:
job      count    min threads    max threads
-----  -------  -------------  -------------
Alice        1              1              1
Bob          1              1              1
Cathy        1              1              1
Dave         1              1              1
Eve          1              1              1
all          1              1              1
total        6              1              1

Select jobs to execute...

[Mon Jan 23 14:48:42 2023]
rule Alice:
    output: Alice_baton.txt
    jobid: 5
    reason: Missing output files: Alice_baton.txt
    resources: tmpdir=/var/folders/3_/0vmyf52s7dvdr36h6nlvwt7r0000gp/T

[Mon Jan 23 14:48:47 2023]
Finished job 5.
1 of 6 steps (17%) done
Select jobs to execute...

[Mon Jan 23 14:48:47 2023]
rule Bob:
    input: Alice_baton.txt
    output: Bob_baton.txt
    jobid: 4
    reason: Missing output files: Bob_baton.txt; Input files updated by another job: Alice_baton.txt
    resources: tmpdir=/var/folders/3_/0vmyf52s7dvdr36h6nlvwt7r0000gp/T

[Mon Jan 23 14:48:52 2023]
Finished job 4.
2 of 6 steps (33%) done
Select jobs to execute...

[Mon Jan 23 14:48:52 2023]
rule Cathy:
    input: Bob_baton.txt
    output: Cathy_baton.txt
    jobid: 3
    reason: Missing output files: Cathy_baton.txt; Input files updated by another job: Bob_baton.txt
    resources: tmpdir=/var/folders/3_/0vmyf52s7dvdr36h6nlvwt7r0000gp/T

[Mon Jan 23 14:48:57 2023]
Finished job 3.
3 of 6 steps (50%) done
Select jobs to execute...

[Mon Jan 23 14:48:57 2023]
rule Dave:
    input: Cathy_baton.txt
    output: Dave_baton.txt
    jobid: 2
    reason: Missing output files: Dave_baton.txt; Input files updated by another job: Cathy_baton.txt
    resources: tmpdir=/var/folders/3_/0vmyf52s7dvdr36h6nlvwt7r0000gp/T

[Mon Jan 23 14:49:02 2023]
Finished job 2.
4 of 6 steps (67%) done
Select jobs to execute...

[Mon Jan 23 14:49:02 2023]
rule Eve:
    input: Dave_baton.txt
    output: Eve_baton.txt
    jobid: 1
    reason: Missing output files: Eve_baton.txt; Input files updated by another job: Dave_baton.txt
    resources: tmpdir=/var/folders/3_/0vmyf52s7dvdr36h6nlvwt7r0000gp/T

[Mon Jan 23 14:49:08 2023]
Finished job 1.
5 of 6 steps (83%) done
Select jobs to execute...

[Mon Jan 23 14:49:08 2023]
localrule all:
    input: Eve_baton.txt
    jobid: 0
    reason: Input files updated by another job: Eve_baton.txt
    resources: tmpdir=/var/folders/3_/0vmyf52s7dvdr36h6nlvwt7r0000gp/T

[Mon Jan 23 14:49:08 2023]
Finished job 0.
6 of 6 steps (100%) done
Complete log: .snakemake/log/2023-01-23T144842.487845.snakemake.log


less Eve_baton.txt

Alice passes baton
Bob passes baton
Cathy passes baton
Dave passes baton
Eve passes baton
```

## Cache Directory

```
tree .snakemake 
.snakemake
├── auxiliary
├── conda
├── conda-archive
├── incomplete
├── locks
├── log
│   └── 2023-01-23T145101.307915.snakemake.log
├── metadata
│   ├── Q2F0aHlfYmF0b24udHh0
│   ├── QWxpY2VfYmF0b24udHh0
│   ├── Qm9iX2JhdG9uLnR4dA==
│   ├── RGF2ZV9iYXRvbi50eHQ=
│   └── RXZlX2JhdG9uLnR4dA==
├── shadow
└── singularity
```
