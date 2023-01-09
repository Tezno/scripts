# Update status node

```
sudo scontrol update nodename= state=idle
```

# Show nodes (CPU/Cores/Resources)

```
scontrol show nodes
```

# Show queue

```
squeue
```

# Job information

```
sacct -j $SLURM_JOB_ID --format=JobID,State,Partition,Start,End,Elapsed,NCPUS,alloctres%35
sacct -j $SLURM_JOB_ID --format=JobID,State,NCPUS,alloctres%35,NodeList%50
scontrol show jobid -dd 5020
```

# Generate token for specific user with life lifespan

scontrol token username=$USER lifespan=999999999

# Example CURL

# GET Job

```
curl --location --request GET 'http://$IP:8080/slurm/v0.0.37/jobs' \
--header 'X-SLURM-USER-TOKEN: $SLURM_API_USER_TOKEN' \
--header 'X-SLURM-USER-NAME: $SLURM_API_TOKEN'
```

# POST Job

```
export SLURM_API_USER_TOKEN=
export SLURM_API_TOKEN=
export SLURM_URL=http://10.0.0.145:8080/slurm/v0.0.37

```

```
curl --location --request POST "$SLURM_URL/job/submit" \
--header "X-SLURM-USER-TOKEN: $SLURM_API_TOKEN" \
--header "X-SLURM-USER-NAME: $SLURM_API_USER_TOKEN" \
--header 'Content-Type: application/json' \
--data '{
    "job": {
        "name":"theophile",
        "current_working_directory":"/tmp/",
        "standard_output":"/tmp/log/theophile-test.log",
        "environment":{
            "PATH":"/bin:/usr/bin/:/usr/local/bin/",
            "LD_LIBRARY_PATH":"/lib/:/lib64/:/usr/local/lib"
        }
    },
    "script":"#!/bin/bash\necho toto"
}'
```
