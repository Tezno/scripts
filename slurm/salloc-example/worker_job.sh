#!/bin/bash

LOG="$LOG_DIR/slave-$SLURM_PROCID.log"
date > $LOG
HOST=$(hostname)
echo "MASTER HOST variables ----> $SLURM_SRUN_COMM_HOST -> $HOST" >> $LOG
echo "SLAVE: $SLURM_PROCID" >> $LOG
hostname >> $LOG

$WORKER_JOB_CMD

for i in {1..10}; do
    sleep 1;
    date >> $LOG;
done;
