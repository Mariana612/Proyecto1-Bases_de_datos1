CREATE tablespace Proyecto1_Data
datafile 'C:\app\maria\oradata\MarianaBD\Proyecto1data01.dbf'
size 10M
Reuse
autoextend On
next 512k
maxsize 200m;

CREATE tablespace Proyecto1_ind
datafile 'C:\app\maria\oradata\MarianaBD\Proyecto1ind01.dbf'
size 10M
Reuse
autoextend On
next 512k
maxsize 200m;


Create User PR1
Identified by PR1
Default Tablespace Proyecto1_Data
Quota 10m on Proyecto1_Data
temporary tablespace temp
quota 5m on system;

GRANT ALL PRIVILEGES to PR1;