#!/bin/bash

export LOG_DIR="/tmp/log/test"
export N_TASKS=8
export CPU_PER_TASK=2

salloc \
    --ntasks=$N_TASKS \
    --cpus-per-task=$CPU_PER_TASK \
    --mem-per-cpu=100 \
    parallel-exec.sh
    &> "${LOG_DIR}/sbatch.log"