#!/bin/bash

LOG="$LOG_DIR/master.log"

date > $LOG
N_TASKS_SLAVES=$(expr $N_TASKS - 1)

echo "N_TASKS: $N_TASKS" >> $LOG
echo "N_TASKS_SLAVES: $N_TASKS_SLAVES" >> $LOG
srun \
    --ntasks $N_TASKS_SLAVES \
    --exact \
    -o "$LOG_DIR/slave-%t.log" \
    slave.sh &

echo "MASTER: $SLURM_PROCID" >> $LOG
hostname >> $LOG

for i in {1..10}; do
    sleep 1;
    date >> $LOG;
done;

echo "END MASTER" >> $LOG