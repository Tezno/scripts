# Find delete directories with date superior to 2 days
find . -maxdepth 1 -type d -ctime +2 -exec rm -r "{}" \;