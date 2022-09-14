#!/bin/bash

LOG="/mnt/inscale-data/log/test/*"
hostname
rm $LOG

# Execute job steps
srun --ntasks=1 --exact master.sh -o /mnt/inscale-data/log/test/master.log &
# srun --ntasks=7 --exact slave.sh -o /mnt/inscale-data/log/test/slave-%t.log &
wait