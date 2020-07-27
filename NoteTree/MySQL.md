# MySQL

To install:

```
sudo apt install default-mysql-server
mysql_secure_installation
```

Password = 'root'

```
sudo systemctl start mysql
sudo systemctl enable mysql
```

Random SQL 

```
> SHOW Databases;
> USE Albums;
> SHOW Tables;
> DESCRIBE Albums;
> DELETE FROM Albums;
> SHOW Databases
> SELECT Artist FROM Albums GROUP BY Artist HAVING COUNT(Artist) > 1;
> INSERT INTO Albums (Aritst, Title, Path, Tier) VALUES ("Slowdive", "Just for a day", "./Music/Slowdive/Just for a day", 2);

```

To set-up local-infile

```
> sudo mysql -u root -p
mysql > SET GLOBAL local_infile=1;
mysql > quit;
mysql > --local_infile=1 -u root -p; 

```

To load data

```
find ~/Music -type d -links 2 > ~/Code/MusicPlayer/PathParser/paths.txt
mysql > LOAD DATA LOCAL INFILE '/home/pi/Code/MusicPlayer/PathParser/parsed.txt' INTO TABLE Albums;
```

To Get php working with MySQL

```
sudo apt install php-mysqli
sudo service apache2 restart
```

