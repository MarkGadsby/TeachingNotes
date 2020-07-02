# Script file

file.sh:

```
#!/bin/bash
sudo apt update -y
sudo apt upgrade -y 
sudo apt autoremove -y
sudo systemctl start mysql
ping raspberrypi.local -c4
```
