# 2014? WDL


```
wget https://github.com/broadinstitute/cromwell/releases/download/47/cromwell-47.jar
java -jar cromwell-47.jar run pass_baton.wdl
```

<details><summary>Verbose output</summary>

```
(nextstrain) 1994_WDL % java -jar cromwell-47.jar run pass_baton.wdl
[2023-01-04 13:06:56,02] [info] Running with database db.url = jdbc:hsqldb:mem:cf7adfc8-dc93-473b-bb52-ee7a1faa41cf;shutdown=false;hsqldb.tx=mvcc
[2023-01-04 13:07:00,10] [info] Running migration RenameWorkflowOptionsInMetadata with a read batch size of 100000 and a write batch size of 100000
[2023-01-04 13:07:00,10] [info] [RenameWorkflowOptionsInMetadata] 100%
[2023-01-04 13:07:00,14] [info] Running with database db.url = jdbc:hsqldb:mem:cab8908d-5e17-42cd-8101-dfe0c903bf2d;shutdown=false;hsqldb.tx=mvcc
[2023-01-04 13:07:00,31] [info] Slf4jLogger started
[2023-01-04 13:07:00,43] [info] Workflow heartbeat configuration:
{
  "cromwellId" : "cromid-b358928",
  "heartbeatInterval" : "2 minutes",
  "ttl" : "10 minutes",
  "failureShutdownDuration" : "5 minutes",
  "writeBatchSize" : 10000,
  "writeThreshold" : 10000
}
[2023-01-04 13:07:00,45] [info] Metadata summary refreshing every 1 second.
[2023-01-04 13:07:00,45] [info] KvWriteActor configured to flush with batch size 200 and process rate 5 seconds.
[2023-01-04 13:07:00,45] [info] WriteMetadataActor configured to flush with batch size 200 and process rate 5 seconds.
[2023-01-04 13:07:00,46] [info] CallCacheWriteActor configured to flush with batch size 100 and process rate 3 seconds.
[2023-01-04 13:07:00,46] [warn] 'docker.hash-lookup.gcr-api-queries-per-100-seconds' is being deprecated, use 'docker.hash-lookup.gcr.throttle' instead (see reference.conf)
[2023-01-04 13:07:00,49] [info] JobExecutionTokenDispenser - Distribution rate: 50 per 1 seconds.
[2023-01-04 13:07:00,50] [info] SingleWorkflowRunnerActor: Version 47
[2023-01-04 13:07:00,51] [info] SingleWorkflowRunnerActor: Submitting workflow
[2023-01-04 13:07:00,53] [info] Unspecified type (Unspecified version) workflow 12c3d67c-a3fa-4e4c-92a6-5c3251f60d31 submitted
[2023-01-04 13:07:00,53] [info] SingleWorkflowRunnerActor: Workflow submitted 12c3d67c-a3fa-4e4c-92a6-5c3251f60d31
[2023-01-04 13:07:00,54] [info] 1 new workflows fetched by cromid-b358928: 12c3d67c-a3fa-4e4c-92a6-5c3251f60d31
[2023-01-04 13:07:00,54] [info] WorkflowManagerActor Starting workflow 12c3d67c-a3fa-4e4c-92a6-5c3251f60d31
[2023-01-04 13:07:00,54] [info] WorkflowManagerActor Successfully started WorkflowActor-12c3d67c-a3fa-4e4c-92a6-5c3251f60d31
[2023-01-04 13:07:00,54] [info] Retrieved 1 workflows from the WorkflowStoreActor
[2023-01-04 13:07:00,56] [info] WorkflowStoreHeartbeatWriteActor configured to flush with batch size 10000 and process rate 2 minutes.
[2023-01-04 13:07:00,60] [info] MaterializeWorkflowDescriptorActor [12c3d67c]: Parsing workflow as WDL 1.0
[2023-01-04 13:07:00,86] [info] MaterializeWorkflowDescriptorActor [12c3d67c]: Call-to-Backend assignments: All_Workflow.Dave -> Local, All_Workflow.Amy -> Local, All_Workflow.Eve -> Local, All_Workflow.Cathy -> Local, All_Workflow.Bob -> Local
[2023-01-04 13:07:00,93] [warn] Local [12c3d67c]: Key/s [cpu, memory, disks] is/are not supported by backend. Unsupported attributes will not be part of job executions.
[2023-01-04 13:07:00,93] [warn] Local [12c3d67c]: Key/s [cpu, memory, disks] is/are not supported by backend. Unsupported attributes will not be part of job executions.
[2023-01-04 13:07:00,93] [warn] Local [12c3d67c]: Key/s [cpu, memory, disks] is/are not supported by backend. Unsupported attributes will not be part of job executions.
[2023-01-04 13:07:00,93] [warn] Local [12c3d67c]: Key/s [cpu, memory, disks] is/are not supported by backend. Unsupported attributes will not be part of job executions.
[2023-01-04 13:07:00,93] [warn] Local [12c3d67c]: Key/s [cpu, memory, disks] is/are not supported by backend. Unsupported attributes will not be part of job executions.
[2023-01-04 13:07:02,02] [info] WorkflowExecutionActor-12c3d67c-a3fa-4e4c-92a6-5c3251f60d31 [12c3d67c]: Starting All_Workflow.Amy
[2023-01-04 13:07:02,51] [info] Assigned new job execution tokens to the following groups: 12c3d67c: 1
[2023-01-04 13:07:03,37] [warn] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Amy:NA:1]: Unrecognized runtime attribute keys: disks, cpu, memory
[2023-01-04 13:07:03,38] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Amy:NA:1]: #! /usr/bin/env bash
sleep 5
echo 'Amy passes baton' > Amy_baton.txt
[2023-01-04 13:07:03,40] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Amy:NA:1]: executing: # make sure there is no preexisting Docker CID file
rm -f /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Amy/execution/docker_cid
# run as in the original configuration without --rm flag (will remove later)
docker run \
  --cidfile /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Amy/execution/docker_cid \
  -i \
   \
  --entrypoint /bin/bash \
  -v /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Amy:/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Amy:delegated \
  ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea /cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Amy/execution/script

# get the return code (working even if the container was detached)
rc=$(docker wait cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Amy/execution/docker_cid)

# remove the container after waiting
docker rm cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Amy/execution/docker_cid

# return exit code
exit $rc
[2023-01-04 13:07:05,49] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Amy:NA:1]: job id: 19749
[2023-01-04 13:07:05,49] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Amy:NA:1]: Status change from - to WaitingForReturnCode
[2023-01-04 13:07:05,50] [info] Not triggering log of token queue status. Effective log interval = None
[2023-01-04 13:07:13,49] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Amy:NA:1]: Status change from WaitingForReturnCode to Done
[2023-01-04 13:07:15,28] [info] WorkflowExecutionActor-12c3d67c-a3fa-4e4c-92a6-5c3251f60d31 [12c3d67c]: Starting All_Workflow.Bob
[2023-01-04 13:07:15,50] [info] Assigned new job execution tokens to the following groups: 12c3d67c: 1
[2023-01-04 13:07:15,52] [warn] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Bob:NA:1]: Unrecognized runtime attribute keys: disks, cpu, memory
[2023-01-04 13:07:15,53] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Bob:NA:1]: #! /usr/bin/env bash
sleep 5
cat /cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Bob/inputs/-1760806742/Amy_baton.txt > Bob_baton.txt
echo 'Bob passes baton' >> Bob_baton.txt
[2023-01-04 13:07:15,53] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Bob:NA:1]: executing: # make sure there is no preexisting Docker CID file
rm -f /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Bob/execution/docker_cid
# run as in the original configuration without --rm flag (will remove later)
docker run \
  --cidfile /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Bob/execution/docker_cid \
  -i \
   \
  --entrypoint /bin/bash \
  -v /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Bob:/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Bob:delegated \
  ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea /cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Bob/execution/script

# get the return code (working even if the container was detached)
rc=$(docker wait cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Bob/execution/docker_cid)

# remove the container after waiting
docker rm cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Bob/execution/docker_cid

# return exit code
exit $rc
[2023-01-04 13:07:20,50] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Bob:NA:1]: job id: 19783
[2023-01-04 13:07:20,50] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Bob:NA:1]: Status change from - to WaitingForReturnCode
[2023-01-04 13:07:21,50] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Bob:NA:1]: Status change from WaitingForReturnCode to Done
[2023-01-04 13:07:23,44] [info] WorkflowExecutionActor-12c3d67c-a3fa-4e4c-92a6-5c3251f60d31 [12c3d67c]: Starting All_Workflow.Cathy
[2023-01-04 13:07:23,50] [info] Assigned new job execution tokens to the following groups: 12c3d67c: 1
[2023-01-04 13:07:23,51] [warn] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Cathy:NA:1]: Unrecognized runtime attribute keys: disks, cpu, memory
[2023-01-04 13:07:23,52] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Cathy:NA:1]: #! /usr/bin/env bash
sleep 5
cat /cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Cathy/inputs/879131282/Bob_baton.txt > Cathy_baton.txt
echo 'Cathy passes baton' >> Cathy_baton.txt
[2023-01-04 13:07:23,52] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Cathy:NA:1]: executing: # make sure there is no preexisting Docker CID file
rm -f /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Cathy/execution/docker_cid
# run as in the original configuration without --rm flag (will remove later)
docker run \
  --cidfile /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Cathy/execution/docker_cid \
  -i \
   \
  --entrypoint /bin/bash \
  -v /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Cathy:/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Cathy:delegated \
  ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea /cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Cathy/execution/script

# get the return code (working even if the container was detached)
rc=$(docker wait cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Cathy/execution/docker_cid)

# remove the container after waiting
docker rm cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Cathy/execution/docker_cid

# return exit code
exit $rc
[2023-01-04 13:07:25,49] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Cathy:NA:1]: job id: 19802
[2023-01-04 13:07:25,49] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Cathy:NA:1]: Status change from - to WaitingForReturnCode
[2023-01-04 13:07:30,53] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Cathy:NA:1]: Status change from WaitingForReturnCode to Done
[2023-01-04 13:07:31,60] [info] WorkflowExecutionActor-12c3d67c-a3fa-4e4c-92a6-5c3251f60d31 [12c3d67c]: Starting All_Workflow.Dave
[2023-01-04 13:07:32,50] [info] Assigned new job execution tokens to the following groups: 12c3d67c: 1
[2023-01-04 13:07:32,52] [warn] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Dave:NA:1]: Unrecognized runtime attribute keys: disks, cpu, memory
[2023-01-04 13:07:32,53] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Dave:NA:1]: #! /usr/bin/env bash
sleep 5
cat /cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Dave/inputs/1138454724/Cathy_baton.txt > Dave_baton.txt
echo 'Dave passes baton' >> Dave_baton.txt
[2023-01-04 13:07:32,53] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Dave:NA:1]: executing: # make sure there is no preexisting Docker CID file
rm -f /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Dave/execution/docker_cid
# run as in the original configuration without --rm flag (will remove later)
docker run \
  --cidfile /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Dave/execution/docker_cid \
  -i \
   \
  --entrypoint /bin/bash \
  -v /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Dave:/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Dave:delegated \
  ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea /cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Dave/execution/script

# get the return code (working even if the container was detached)
rc=$(docker wait cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Dave/execution/docker_cid)

# remove the container after waiting
docker rm cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Dave/execution/docker_cid

# return exit code
exit $rc
[2023-01-04 13:07:35,49] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Dave:NA:1]: job id: 19821
[2023-01-04 13:07:35,49] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Dave:NA:1]: Status change from - to WaitingForReturnCode
[2023-01-04 13:07:39,91] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Dave:NA:1]: Status change from WaitingForReturnCode to Done
[2023-01-04 13:07:41,80] [info] WorkflowExecutionActor-12c3d67c-a3fa-4e4c-92a6-5c3251f60d31 [12c3d67c]: Starting All_Workflow.Eve
[2023-01-04 13:07:42,51] [info] Assigned new job execution tokens to the following groups: 12c3d67c: 1
[2023-01-04 13:07:42,51] [warn] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Eve:NA:1]: Unrecognized runtime attribute keys: disks, cpu, memory
[2023-01-04 13:07:42,52] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Eve:NA:1]: #! /usr/bin/env bash
sleep 5
cat /cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Eve/inputs/-1956304927/Dave_baton.txt > Eve_baton.txt
echo 'Eve passes baton' >> Eve_baton.txt
[2023-01-04 13:07:42,53] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Eve:NA:1]: executing: # make sure there is no preexisting Docker CID file
rm -f /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Eve/execution/docker_cid
# run as in the original configuration without --rm flag (will remove later)
docker run \
  --cidfile /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Eve/execution/docker_cid \
  -i \
   \
  --entrypoint /bin/bash \
  -v /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Eve:/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Eve:delegated \
  ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea /cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Eve/execution/script

# get the return code (working even if the container was detached)
rc=$(docker wait cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Eve/execution/docker_cid)

# remove the container after waiting
docker rm cat /Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Eve/execution/docker_cid

# return exit code
exit $rc
[2023-01-04 13:07:45,49] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Eve:NA:1]: job id: 19842
[2023-01-04 13:07:45,50] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Eve:NA:1]: Status change from - to WaitingForReturnCode
[2023-01-04 13:07:49,21] [info] BackgroundConfigAsyncJobExecutionActor [12c3d67cAll_Workflow.Eve:NA:1]: Status change from WaitingForReturnCode to Done
[2023-01-04 13:07:50,99] [info] WorkflowExecutionActor-12c3d67c-a3fa-4e4c-92a6-5c3251f60d31 [12c3d67c]: Workflow All_Workflow complete. Final Outputs:
{
  "All_Workflow.outfile": "/Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Eve/execution/Eve_baton.txt"
}
[2023-01-04 13:07:51,00] [info] WorkflowManagerActor WorkflowActor-12c3d67c-a3fa-4e4c-92a6-5c3251f60d31 is in a terminal state: WorkflowSucceededState
[2023-01-04 13:07:59,39] [info] SingleWorkflowRunnerActor workflow finished with status 'Succeeded'.
{
  "outputs": {
    "All_Workflow.outfile": "/Users/jchang3/github/j23414/compare_workflows/1994_WDL/cromwell-executions/All_Workflow/12c3d67c-a3fa-4e4c-92a6-5c3251f60d31/call-Eve/execution/Eve_baton.txt"
  },
  "id": "12c3d67c-a3fa-4e4c-92a6-5c3251f60d31"
}
[2023-01-04 13:08:00,52] [info] Workflow polling stopped
[2023-01-04 13:08:00,52] [info] 0 workflows released by cromid-b358928
[2023-01-04 13:08:00,53] [info] Shutting down WorkflowStoreActor - Timeout = 5 seconds
[2023-01-04 13:08:00,53] [info] Shutting down WorkflowLogCopyRouter - Timeout = 5 seconds
[2023-01-04 13:08:00,53] [info] Shutting down JobExecutionTokenDispenser - Timeout = 5 seconds
[2023-01-04 13:08:00,53] [info] Aborting all running workflows.
[2023-01-04 13:08:00,53] [info] WorkflowStoreActor stopped
[2023-01-04 13:08:00,53] [info] JobExecutionTokenDispenser stopped
[2023-01-04 13:08:00,53] [info] WorkflowLogCopyRouter stopped
[2023-01-04 13:08:00,53] [info] Shutting down WorkflowManagerActor - Timeout = 3600 seconds
[2023-01-04 13:08:00,53] [info] WorkflowManagerActor All workflows finished
[2023-01-04 13:08:00,53] [info] WorkflowManagerActor stopped
[2023-01-04 13:08:00,60] [info] Connection pools shut down
[2023-01-04 13:08:00,60] [info] Shutting down SubWorkflowStoreActor - Timeout = 1800 seconds
[2023-01-04 13:08:00,60] [info] Shutting down JobStoreActor - Timeout = 1800 seconds
[2023-01-04 13:08:00,60] [info] Shutting down CallCacheWriteActor - Timeout = 1800 seconds
[2023-01-04 13:08:00,60] [info] Shutting down ServiceRegistryActor - Timeout = 1800 seconds
[2023-01-04 13:08:00,60] [info] Shutting down DockerHashActor - Timeout = 1800 seconds
[2023-01-04 13:08:00,60] [info] Shutting down IoProxy - Timeout = 1800 seconds
[2023-01-04 13:08:00,60] [info] SubWorkflowStoreActor stopped
[2023-01-04 13:08:00,60] [info] JobStoreActor stopped
[2023-01-04 13:08:00,60] [info] CallCacheWriteActor Shutting down: 0 queued messages to process
[2023-01-04 13:08:00,60] [info] WriteMetadataActor Shutting down: 0 queued messages to process
[2023-01-04 13:08:00,60] [info] CallCacheWriteActor stopped
[2023-01-04 13:08:00,60] [info] KvWriteActor Shutting down: 0 queued messages to process
[2023-01-04 13:08:00,60] [info] DockerHashActor stopped
[2023-01-04 13:08:00,61] [info] IoProxy stopped
[2023-01-04 13:08:00,61] [info] ServiceRegistryActor stopped
[2023-01-04 13:08:00,61] [info] Shutting down connection pool: curAllocated=0 idleQueues.size=0 waitQueue.size=0 maxWaitQueueLimit=256 closed=false
[2023-01-04 13:08:00,61] [info] Shutting down connection pool: curAllocated=1 idleQueues.size=1 waitQueue.size=0 maxWaitQueueLimit=256 closed=false
[2023-01-04 13:08:00,61] [info] Shutting down connection pool: curAllocated=0 idleQueues.size=0 waitQueue.size=0 maxWaitQueueLimit=256 closed=false
[2023-01-04 13:08:00,61] [info] Shutting down connection pool: curAllocated=0 idleQueues.size=0 waitQueue.size=0 maxWaitQueueLimit=256 closed=false
[2023-01-04 13:08:00,61] [info] Database closed
[2023-01-04 13:08:00,61] [info] Stream materializer shut down
[2023-01-04 13:08:00,61] [info] WDL HTTP import resolver closed
(nextstrain) 1994_WDL % 
```

</details>

## Terra


1. Navigate to https://portal.firecloud.org/?return=firecloud#methods
2. Upload `pass_baton.wdl`
3. [Import to a Terra workspace](https://support.terra.bio/hc/en-us/articles/360038137292--How-to-import-a-workflow-and-its-parameter-file-from-Dockstore-into-Terra)
3. [Submit a Terra job](https://support.terra.bio/hc/en-us/sections/360004147011-Workflows)