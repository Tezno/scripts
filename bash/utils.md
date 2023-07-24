# Find delete directories with date superior to 2 days

`find . -maxdepth 1 -type d -ctime +2 -exec rm -r "{}" \;`

# Reload wifi driver

## Get module name

`lsmod | grep wifi`

## Reload

`modprobe <iwlwifi>`

# Restart sound

`systemctl --user restart pulseaudio`

# Listing services under systemd

`systemctl --type=service`

# Get all open ports
`sudo netstat -tulpn`

# Get PID open port
`sudo lsof -n -i :80`

# Exec script file without exec file
`sh -c "echo hello > helloworld.txt && cat helloworld.txt"`

# Debug command
`strace -ff -e verbose=all trace=execve -v -p 1234`