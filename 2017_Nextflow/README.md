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
