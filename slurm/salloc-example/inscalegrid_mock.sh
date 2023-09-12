#!/bin/bash

LOG="/tmp/log/test/*"
hostname

# Execute job steps
 srun \
	--exact \
	--cpu-bind=v \
	--ntasks=1 \
	--cpus-per-task=$CPU_PER_TASK \
	--mem-per-cpu=$MEM_PER_CPU \
	orchestrator_job.sh -o "${LOG_DIR}/master.log" &
 #srun --ntasks=7 --exact slave.sh -o "${LOG_DIR}slave-%t.log" &

wait

