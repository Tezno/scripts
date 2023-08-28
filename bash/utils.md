# Utils

## Find delete directories with date superior to 2 days

`find . -maxdepth 1 -type d -ctime +2 -exec rm -r "{}" \;`

### Reload wifi driver

### Get module name

`lsmod | grep wifi`

### Reload

`modprobe <iwlwifi>`

## Restart sound

`systemctl --user restart pulseaudio`

## Listing services under systemd

`systemctl --type=service`

## Get all open ports from host

`sudo netstat -tulpn`

## Get PID open port

`sudo lsof -n -i :80`

## Check open port on remote (tcp)

`echo > /dev/tcp/[host]/[port] && echo "Port is open"`

## Check open port on remote (udp)

`echo > /dev/udp/[host]/[port] && echo "Port is open"`

## Exec script file without exec file

`sh -c "echo hello > helloworld.txt && cat helloworld.txt"`

## Debug command

`strace -ff -e verbose=all trace=execve -v -p 1234`

## Delete directories with day

`find . -type d -mtime +1 -exec ls -ld {} \;`
`find . -type d -mtime +1 -exec rm -rf {} \;`

## Tar

![tar](assets/tar.png)
