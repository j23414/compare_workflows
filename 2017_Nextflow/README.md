# 2017 Nextflow

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

Nextflow Tower

1. Create a free account (or link your github) at http://tower.nf
2. Create a token
3. Add token to your `.bashrc` or `.profile`
4. Run a pipeline using the `-with-tower` flag

```
nextflow run hello -with-tower
CAPSULE: Downloading dependency io.nextflow:nf-httpfs:jar:20.10.0
CAPSULE: Downloading dependency io.nextflow:nf-commons:jar:20.10.0
CAPSULE: Downloading dependency org.codehaus.groovy:groovy-nio:jar:3.0.5
CAPSULE: Downloading dependency org.codehaus.groovy:groovy-json:jar:3.0.5
CAPSULE: Downloading dependency io.nextflow:nextflow:jar:20.10.0
CAPSULE: Downloading dependency org.codehaus.groovy:groovy:jar:3.0.5
CAPSULE: Downloading dependency io.nextflow:nf-tower:jar:20.10.0
CAPSULE: Downloading dependency org.codehaus.groovy:groovy-templates:jar:3.0.5
CAPSULE: Downloading dependency org.codehaus.groovy:groovy-xml:jar:3.0.5
CAPSULE: Downloading dependency io.nextflow:nf-amazon:jar:20.10.0
N E X T F L O W  ~  version 20.10.0                              
Launching `nextflow-io/hello` [drunk_swirles] - revision: 96eb04d6a4 [master]
NOTE: Your local project version looks outdated - a different revision is available in the remote repository [e6d9427e5b]
Monitor the execution with Nextflow Tower using this url https://tower.nf/watch/5p2cdLO0cEexkI
executor >  local (4)
[62/0f972c] process > sayHello (1) [100%] 4 of 4 ✔
Hola world!

Ciao world!

Hello world!

Bonjour world!

WARN: Task runtime metrics are not reported when using macOS without a container engine
```

Looks neat so far

![](Tower.png)

Definitely interested in the core/task/memory efficiency dashboard.

[ ] Test this on HPC Slurm system
