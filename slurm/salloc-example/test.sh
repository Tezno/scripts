#!/bin/bash

LOG_TAG=$(date +'%Y%m%d_%H%M%S')
export LOG_DIR="/qa/assets/slurm_tests/logs/$LOG_TAG"
mkdir -p $LOG_DIR

export N_TASKS=${N_TASKS:=2}

if [ $N_TASKS -lt 2 ]
then
	echo "ERROR: N_TASKS need to be at least 2 (one for orchestrator + one worker), currently it is $N_TASKS" >&2
	exit 42
fi

export CPU_PER_TASK=1
export MEM_PER_CPU=100

salloc \
    --ntasks=$N_TASKS \
    --cpus-per-task=$CPU_PER_TASK \
    --mem-per-cpu=$MEM_PER_CPU \
    inscalegrid_mock.sh \
    &> "${LOG_DIR}/sbatch.log"
