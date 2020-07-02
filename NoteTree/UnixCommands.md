# Unix Commands

For looking into boot sequence:

```
systemd-analyze
systemd-analyze critical-chain
systemd-analyze blame 
```

For hardware info:

```
blkid
```

To control a service:

```
systemctl disable mysql.service
systemctl list-unit-files "*mysql*"
systemctl start mysql
```

Basic updates  - Ubuntu is a Debian distribution. 

Apt is the most common options from apt-get and apt-cache:

```
sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt install
sudo apt remove
sudo apt purge
sudo apt list	
```

Remote access:

```
ping raspberrypi.local -c4
ping 192.168.1.22 -c4
```

SSH:

```
ssh pi@192.168.1.22
```

VNC:

```
pi:> vncserver
pi:> raspi -config
	- advanced options > memory split > GPU > 128MB
pi:> vncserver -randr=800x600
 - labtop res = 1366x768
 - monitir res = 1920x1080
pi:> vncserver -kill:1
```

SSH copy:

```
scp *.* pi@192.168.1.22:RetroPie/roms/mame-libretro
scp -r ~/Music pi@192.168.1.6:
quicker:
rsync -avP ~/Music pi@192.168.1.6:
```

To find where package is installed:

```
whereis qmake
whereis vorbis
```

To **remove** a folder:

```
rm -r ~/Music/
```

To **clear** a folder:

```
rm -r ~/Music/*
```

To copy all new music files

```
cp -RT -u ~/Music/ /media/mark/MUSIC/
```

Info about me 

```
hostname
hostname -i
hostname -I
```

