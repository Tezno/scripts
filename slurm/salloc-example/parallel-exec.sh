#!/bin/bash

LOG="/tmp/log/test/*"
hostname

# Execute job steps
srun --ntasks=1 --exact master.sh -o "${LOG_DIR}/master.log" &
# srun --ntasks=7 --exact slave.sh -o "${LOG_DIR}slave-%t.log" &

wait