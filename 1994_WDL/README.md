# 2014? WDL


```
wget https://github.com/broadinstitute/cromwell/releases/download/47/cromwell-47.jar
java -jar cromwell-47.jar run pass_baton.wdl
```

<details><summary>Verbose output</summary>

```
[2023-01-23 14:28:19,68] [info] Running with database db.url = jdbc:hsqldb:mem:c4149c6d-d789-4da7-8fa4-89086860c1e9;shutdown=false;hsqldb.tx=mvcc
[2023-01-23 14:28:23,88] [info] Running migration RenameWorkflowOptionsInMetadata with a read batch size of 100000 and a write batch size of 100000
[2023-01-23 14:28:23,89] [info] [RenameWorkflowOptionsInMetadata] 100%
[2023-01-23 14:28:23,92] [info] Running with database db.url = jdbc:hsqldb:mem:fca9e893-e1ef-490d-bd3c-03f1ec451af5;shutdown=false;hsqldb.tx=mvcc
[2023-01-23 14:28:24,10] [info] Slf4jLogger started
[2023-01-23 14:28:24,21] [info] Workflow heartbeat configuration:
{
  "cromwellId" : "cromid-91a7ea9",
  "heartbeatInterval" : "2 minutes",
  "ttl" : "10 minutes",
  "failureShutdownDuration" : "5 minutes",
  "writeBatchSize" : 10000,
  "writeThreshold" : 10000
}
[2023-01-23 14:28:24,23] [info] Metadata summary refreshing every 1 second.
[2023-01-23 14:28:24,24] [info] WriteMetadataActor configured to flush with batch size 200 and process rate 5 seconds.
[2023-01-23 14:28:24,24] [info] KvWriteActor configured to flush with batch size 200 and process rate 5 seconds.
[2023-01-23 14:28:24,24] [info] CallCacheWriteActor configured to flush with batch size 100 and process rate 3 seconds.
[2023-01-23 14:28:24,24] [warn] 'docker.hash-lookup.gcr-api-queries-per-100-seconds' is being deprecated, use 'docker.hash-lookup.gcr.throttle' instead (see reference.conf)
[2023-01-23 14:28:24,28] [info] JobExecutionTokenDispenser - Distribution rate: 50 per 1 seconds.
[2023-01-23 14:28:24,30] [info] SingleWorkflowRunnerActor: Version 47
[2023-01-23 14:28:24,30] [info] SingleWorkflowRunnerActor: Submitting workflow
[2023-01-23 14:28:24,33] [info] Unspecified type (Unspecified version) workflow a49dcbab-8831-462b-b7b7-b0d3adb6a6f4 submitted
[2023-01-23 14:28:24,34] [info] SingleWorkflowRunnerActor: Workflow submitted a49dcbab-8831-462b-b7b7-b0d3adb6a6f4
[2023-01-23 14:28:24,34] [info] 1 new workflows fetched by cromid-91a7ea9: a49dcbab-8831-462b-b7b7-b0d3adb6a6f4
[2023-01-23 14:28:24,35] [info] WorkflowManagerActor Starting workflow a49dcbab-8831-462b-b7b7-b0d3adb6a6f4
[2023-01-23 14:28:24,35] [info] WorkflowManagerActor Successfully started WorkflowActor-a49dcbab-8831-462b-b7b7-b0d3adb6a6f4
[2023-01-23 14:28:24,35] [info] Retrieved 1 workflows from the WorkflowStoreActor
[2023-01-23 14:28:24,36] [info] WorkflowStoreHeartbeatWriteActor configured to flush with batch size 10000 and process rate 2 minutes.
[2023-01-23 14:28:24,39] [info] MaterializeWorkflowDescriptorActor [a49dcbab]: Parsing workflow as WDL 1.0
[2023-01-23 14:28:24,64] [info] MaterializeWorkflowDescriptorActor [a49dcbab]: Call-to-Backend assignments: All_Workflow.Eve -> Local, All_Workflow.Dave -> Local, All_Workflow.Alice -> Local, All_Workflow.Cathy -> Local, All_Workflow.Bob -> Local
[2023-01-23 14:28:24,71] [warn] Local [a49dcbab]: Key/s [cpu, memory, disks] is/are not supported by backend. Unsupported attributes will not be part of job executions.
[2023-01-23 14:28:24,71] [warn] Local [a49dcbab]: Key/s [cpu, memory, disks] is/are not supported by backend. Unsupported attributes will not be part of job executions.
[2023-01-23 14:28:24,71] [warn] Local [a49dcbab]: Key/s [cpu, memory, disks] is/are not supported by backend. Unsupported attributes will not be part of job executions.
[2023-01-23 14:28:24,71] [warn] Local [a49dcbab]: Key/s [cpu, memory, disks] is/are not supported by backend. Unsupported attributes will not be part of job executions.
[2023-01-23 14:28:24,71] [warn] Local [a49dcbab]: Key/s [cpu, memory, disks] is/are not supported by backend. Unsupported attributes will not be part of job executions.
[2023-01-23 14:28:25,80] [info] WorkflowExecutionActor-a49dcbab-8831-462b-b7b7-b0d3adb6a6f4 [a49dcbab]: Starting All_Workflow.Alice
[2023-01-23 14:28:26,30] [info] Assigned new job execution tokens to the following groups: a49dcbab: 1
[2023-01-23 14:28:27,12] [warn] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Alice:NA:1]: Unrecognized runtime attribute keys: disks, cpu, memory
[2023-01-23 14:28:27,14] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Alice:NA:1]: #! /usr/bin/env bash
sleep 5
echo 'Alice passes baton' > Alice_baton.txt
[2023-01-23 14:28:27,15] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Alice:NA:1]: executing: # make sure there is no preexisting Docker CID file
rm -f /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Alice/execution/docker_cid
# run as in the original configuration without --rm flag (will remove later)
docker run \
  --cidfile /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Alice/execution/docker_cid \
  -i \
   \
  --entrypoint /bin/bash \
  -v /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Alice:/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Alice:delegated \
  ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea /cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Alice/execution/script

# get the return code (working even if the container was detached)
rc=$(docker wait cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Alice/execution/docker_cid)

# remove the container after waiting
docker rm cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Alice/execution/docker_cid

# return exit code
exit $rc
[2023-01-23 14:28:29,27] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Alice:NA:1]: job id: 19170
[2023-01-23 14:28:29,28] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Alice:NA:1]: Status change from - to WaitingForReturnCode
[2023-01-23 14:28:29,29] [info] Not triggering log of token queue status. Effective log interval = None
[2023-01-23 14:28:34,49] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Alice:NA:1]: Status change from WaitingForReturnCode to Done
[2023-01-23 14:28:36,01] [info] WorkflowExecutionActor-a49dcbab-8831-462b-b7b7-b0d3adb6a6f4 [a49dcbab]: Starting All_Workflow.Bob
[2023-01-23 14:28:36,30] [info] Assigned new job execution tokens to the following groups: a49dcbab: 1
[2023-01-23 14:28:36,32] [warn] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Bob:NA:1]: Unrecognized runtime attribute keys: disks, cpu, memory
[2023-01-23 14:28:36,33] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Bob:NA:1]: #! /usr/bin/env bash
sleep 5
cat /cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Bob/inputs/-1490463043/Alice_baton.txt > Bob_baton.txt
echo 'Bob passes baton' >> Bob_baton.txt
[2023-01-23 14:28:36,33] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Bob:NA:1]: executing: # make sure there is no preexisting Docker CID file
rm -f /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Bob/execution/docker_cid
# run as in the original configuration without --rm flag (will remove later)
docker run \
  --cidfile /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Bob/execution/docker_cid \
  -i \
   \
  --entrypoint /bin/bash \
  -v /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Bob:/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Bob:delegated \
  ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea /cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Bob/execution/script

# get the return code (working even if the container was detached)
rc=$(docker wait cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Bob/execution/docker_cid)

# remove the container after waiting
docker rm cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Bob/execution/docker_cid

# return exit code
exit $rc
[2023-01-23 14:28:39,26] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Bob:NA:1]: job id: 19194
[2023-01-23 14:28:39,26] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Bob:NA:1]: Status change from - to WaitingForReturnCode
[2023-01-23 14:28:43,56] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Bob:NA:1]: Status change from WaitingForReturnCode to Done
[2023-01-23 14:28:45,19] [info] WorkflowExecutionActor-a49dcbab-8831-462b-b7b7-b0d3adb6a6f4 [a49dcbab]: Starting All_Workflow.Cathy
[2023-01-23 14:28:45,30] [info] Assigned new job execution tokens to the following groups: a49dcbab: 1
[2023-01-23 14:28:45,30] [warn] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Cathy:NA:1]: Unrecognized runtime attribute keys: disks, cpu, memory
[2023-01-23 14:28:45,31] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Cathy:NA:1]: #! /usr/bin/env bash
sleep 5
cat /cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Cathy/inputs/1891044530/Bob_baton.txt > Cathy_baton.txt
echo 'Cathy passes baton' >> Cathy_baton.txt
[2023-01-23 14:28:45,31] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Cathy:NA:1]: executing: # make sure there is no preexisting Docker CID file
rm -f /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Cathy/execution/docker_cid
# run as in the original configuration without --rm flag (will remove later)
docker run \
  --cidfile /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Cathy/execution/docker_cid \
  -i \
   \
  --entrypoint /bin/bash \
  -v /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Cathy:/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Cathy:delegated \
  ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea /cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Cathy/execution/script

# get the return code (working even if the container was detached)
rc=$(docker wait cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Cathy/execution/docker_cid)

# remove the container after waiting
docker rm cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Cathy/execution/docker_cid

# return exit code
exit $rc
[2023-01-23 14:28:49,27] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Cathy:NA:1]: job id: 19222
[2023-01-23 14:28:49,27] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Cathy:NA:1]: Status change from - to WaitingForReturnCode
[2023-01-23 14:28:52,02] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Cathy:NA:1]: Status change from WaitingForReturnCode to Done
[2023-01-23 14:28:53,35] [info] WorkflowExecutionActor-a49dcbab-8831-462b-b7b7-b0d3adb6a6f4 [a49dcbab]: Starting All_Workflow.Dave
[2023-01-23 14:28:54,30] [info] Assigned new job execution tokens to the following groups: a49dcbab: 1
[2023-01-23 14:28:54,30] [warn] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Dave:NA:1]: Unrecognized runtime attribute keys: disks, cpu, memory
[2023-01-23 14:28:54,30] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Dave:NA:1]: #! /usr/bin/env bash
sleep 5
cat /cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Dave/inputs/-1370490140/Cathy_baton.txt > Dave_baton.txt
echo 'Dave passes baton' >> Dave_baton.txt
[2023-01-23 14:28:54,31] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Dave:NA:1]: executing: # make sure there is no preexisting Docker CID file
rm -f /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Dave/execution/docker_cid
# run as in the original configuration without --rm flag (will remove later)
docker run \
  --cidfile /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Dave/execution/docker_cid \
  -i \
   \
  --entrypoint /bin/bash \
  -v /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Dave:/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Dave:delegated \
  ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea /cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Dave/execution/script

# get the return code (working even if the container was detached)
rc=$(docker wait cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Dave/execution/docker_cid)

# remove the container after waiting
docker rm cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Dave/execution/docker_cid

# return exit code
exit $rc
[2023-01-23 14:28:59,27] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Dave:NA:1]: job id: 19246
[2023-01-23 14:28:59,27] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Dave:NA:1]: Status change from - to WaitingForReturnCode
[2023-01-23 14:29:00,07] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Dave:NA:1]: Status change from WaitingForReturnCode to Done
[2023-01-23 14:29:01,51] [info] WorkflowExecutionActor-a49dcbab-8831-462b-b7b7-b0d3adb6a6f4 [a49dcbab]: Starting All_Workflow.Eve
[2023-01-23 14:29:02,30] [info] Assigned new job execution tokens to the following groups: a49dcbab: 1
[2023-01-23 14:29:02,31] [warn] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Eve:NA:1]: Unrecognized runtime attribute keys: disks, cpu, memory
[2023-01-23 14:29:02,31] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Eve:NA:1]: #! /usr/bin/env bash
sleep 5
cat /cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Eve/inputs/-651765311/Dave_baton.txt > Eve_baton.txt
echo 'Eve passes baton' >> Eve_baton.txt
[2023-01-23 14:29:02,32] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Eve:NA:1]: executing: # make sure there is no preexisting Docker CID file
rm -f /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Eve/execution/docker_cid
# run as in the original configuration without --rm flag (will remove later)
docker run \
  --cidfile /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Eve/execution/docker_cid \
  -i \
   \
  --entrypoint /bin/bash \
  -v /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Eve:/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Eve:delegated \
  ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea /cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Eve/execution/script

# get the return code (working even if the container was detached)
rc=$(docker wait cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Eve/execution/docker_cid)

# remove the container after waiting
docker rm cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Eve/execution/docker_cid

# return exit code
exit $rc
[2023-01-23 14:29:04,27] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Eve:NA:1]: job id: 19265
[2023-01-23 14:29:04,27] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Eve:NA:1]: Status change from - to WaitingForReturnCode
[2023-01-23 14:29:09,32] [info] BackgroundConfigAsyncJobExecutionActor [a49dcbabAll_Workflow.Eve:NA:1]: Status change from WaitingForReturnCode to Done
[2023-01-23 14:29:10,70] [info] WorkflowExecutionActor-a49dcbab-8831-462b-b7b7-b0d3adb6a6f4 [a49dcbab]: Workflow All_Workflow complete. Final Outputs:
{
  "All_Workflow.outfile": "/Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Eve/execution/Eve_baton.txt"
}
[2023-01-23 14:29:10,72] [info] WorkflowManagerActor WorkflowActor-a49dcbab-8831-462b-b7b7-b0d3adb6a6f4 is in a terminal state: WorkflowSucceededState
[2023-01-23 14:29:19,70] [info] SingleWorkflowRunnerActor workflow finished with status 'Succeeded'.
{
  "outputs": {
    "All_Workflow.outfile": "/Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/a49dcbab-8831-462b-b7b7-b0d3adb6a6f4/call-Eve/execution/Eve_baton.txt"
  },
  "id": "a49dcbab-8831-462b-b7b7-b0d3adb6a6f4"
}
[2023-01-23 14:29:24,30] [info] Workflow polling stopped
[2023-01-23 14:29:24,30] [info] 0 workflows released by cromid-91a7ea9
[2023-01-23 14:29:24,30] [info] Shutting down WorkflowStoreActor - Timeout = 5 seconds
[2023-01-23 14:29:24,30] [info] Shutting down WorkflowLogCopyRouter - Timeout = 5 seconds
[2023-01-23 14:29:24,30] [info] Shutting down JobExecutionTokenDispenser - Timeout = 5 seconds
[2023-01-23 14:29:24,30] [info] Aborting all running workflows.
[2023-01-23 14:29:24,30] [info] JobExecutionTokenDispenser stopped
[2023-01-23 14:29:24,30] [info] WorkflowStoreActor stopped
[2023-01-23 14:29:24,30] [info] WorkflowLogCopyRouter stopped
[2023-01-23 14:29:24,30] [info] Shutting down WorkflowManagerActor - Timeout = 3600 seconds
[2023-01-23 14:29:24,31] [info] WorkflowManagerActor All workflows finished
[2023-01-23 14:29:24,31] [info] WorkflowManagerActor stopped
[2023-01-23 14:29:24,38] [info] Connection pools shut down
[2023-01-23 14:29:24,38] [info] Shutting down SubWorkflowStoreActor - Timeout = 1800 seconds
[2023-01-23 14:29:24,38] [info] Shutting down JobStoreActor - Timeout = 1800 seconds
[2023-01-23 14:29:24,38] [info] Shutting down CallCacheWriteActor - Timeout = 1800 seconds
[2023-01-23 14:29:24,38] [info] SubWorkflowStoreActor stopped
[2023-01-23 14:29:24,38] [info] Shutting down ServiceRegistryActor - Timeout = 1800 seconds
[2023-01-23 14:29:24,38] [info] Shutting down DockerHashActor - Timeout = 1800 seconds
[2023-01-23 14:29:24,38] [info] Shutting down IoProxy - Timeout = 1800 seconds
[2023-01-23 14:29:24,38] [info] JobStoreActor stopped
[2023-01-23 14:29:24,38] [info] CallCacheWriteActor Shutting down: 0 queued messages to process
[2023-01-23 14:29:24,38] [info] WriteMetadataActor Shutting down: 0 queued messages to process
[2023-01-23 14:29:24,38] [info] KvWriteActor Shutting down: 0 queued messages to process
[2023-01-23 14:29:24,38] [info] DockerHashActor stopped
[2023-01-23 14:29:24,38] [info] CallCacheWriteActor stopped
[2023-01-23 14:29:24,38] [info] IoProxy stopped
[2023-01-23 14:29:24,38] [info] ServiceRegistryActor stopped
[2023-01-23 14:29:24,38] [info] Shutting down connection pool: curAllocated=0 idleQueues.size=0 waitQueue.size=0 maxWaitQueueLimit=256 closed=false
[2023-01-23 14:29:24,38] [info] Shutting down connection pool: curAllocated=1 idleQueues.size=1 waitQueue.size=0 maxWaitQueueLimit=256 closed=false
[2023-01-23 14:29:24,38] [info] Shutting down connection pool: curAllocated=0 idleQueues.size=0 waitQueue.size=0 maxWaitQueueLimit=256 closed=false
[2023-01-23 14:29:24,38] [info] Shutting down connection pool: curAllocated=0 idleQueues.size=0 waitQueue.size=0 maxWaitQueueLimit=256 closed=false
[2023-01-23 14:29:24,38] [info] Database closed
[2023-01-23 14:29:24,38] [info] Stream materializer shut down
[2023-01-23 14:29:24,38] [info] WDL HTTP import resolver closed
```

</details>

```
tree cromwell-executions 

cromwell-executions
└── All_Workflow
    └── 4de95676-46bf-4181-8452-ece5ff3bab29
        ├── call-Alice
        │   ├── execution
        │   │   ├── Alice_baton.txt
        │   │   ├── docker_cid
        │   │   ├── rc
        │   │   ├── script
        │   │   ├── script.background
        │   │   ├── script.submit
        │   │   ├── stderr
        │   │   ├── stderr.background
        │   │   ├── stdout
        │   │   └── stdout.background
        │   └── tmp.b57ea323
        ├── call-Bob
        │   ├── execution
        │   │   ├── Bob_baton.txt
        │   │   ├── docker_cid
        │   │   ├── rc
        │   │   ├── script
        │   │   ├── script.background
        │   │   ├── script.submit
        │   │   ├── stderr
        │   │   ├── stderr.background
        │   │   ├── stdout
        │   │   └── stdout.background
        │   ├── inputs
        │   │   └── 1050289724
        │   │       └── Alice_baton.txt
        │   └── tmp.55e4ea9b
        ├── call-Cathy
        │   ├── execution
        │   │   ├── Cathy_baton.txt
        │   │   ├── docker_cid
        │   │   ├── rc
        │   │   ├── script
        │   │   ├── script.background
        │   │   ├── script.submit
        │   │   ├── stderr
        │   │   ├── stderr.background
        │   │   ├── stdout
        │   │   └── stdout.background
        │   ├── inputs
        │   │   └── -658264079
        │   │       └── Bob_baton.txt
        │   └── tmp.b69b6d77
        ├── call-Dave
        │   ├── execution
        │   │   ├── Dave_baton.txt
        │   │   ├── docker_cid
        │   │   ├── rc
        │   │   ├── script
        │   │   ├── script.background
        │   │   ├── script.submit
        │   │   ├── stderr
        │   │   ├── stderr.background
        │   │   ├── stdout
        │   │   └── stdout.background
        │   ├── inputs
        │   │   └── 1170262627
        │   │       └── Cathy_baton.txt
        │   └── tmp.864e329c
        └── call-Eve
            ├── execution
            │   ├── Eve_baton.txt
            │   ├── docker_cid
            │   ├── rc
            │   ├── script
            │   ├── script.background
            │   ├── script.submit
            │   ├── stderr
            │   ├── stderr.background
            │   ├── stdout
            │   └── stdout.background
            ├── inputs
            │   └── 1924046434
            │       └── Dave_baton.txt
            └── tmp.387637ba

26 directories, 54 files
```

## Terra


1. Navigate to https://portal.firecloud.org/?return=firecloud#methods
2. Upload `pass_baton.wdl`
3. [Import to a Terra workspace](https://support.terra.bio/hc/en-us/articles/360038137292--How-to-import-a-workflow-and-its-parameter-file-from-Dockstore-into-Terra)
3. [Submit a Terra job](https://support.terra.bio/hc/en-us/sections/360004147011-Workflows)