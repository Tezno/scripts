#!/bin/bash

LOG="$LOG_DIR/master.log"

date > $LOG
N_TASKS_SLAVES=$(expr $N_TASKS - 1)

echo "N_TASKS: $N_TASKS" >> $LOG
echo "N_TASKS_SLAVES: $N_TASKS_SLAVES" >> $LOG
echo "CPU_PER_TASK: $CPU_PER_TASK" >> $LOG
echo "MEM_PER_CPU: $MEM_PER_CPU" >> $LOG
srun \
    --exact \
    --cpu-bind=v \
    --ntasks $N_TASKS_SLAVES \
    --cpus-per-task=$CPU_PER_TASK \
    --mem-per-cpu=$MEM_PER_CPU \
    -o "$LOG_DIR/slave-%t.log" \
    worker_job.sh &

echo "MASTER: $SLURM_PROCID" >> $LOG
hostname >> $LOG

for i in {1..10}; do
    sleep 1;
    date >> $LOG;
done;

echo "END MASTER" >> $LOG

