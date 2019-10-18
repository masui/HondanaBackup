# パスワードは ~/.pgpassに書いてある
do_backup:
	/usr/bin/pg_dump -h ec2-23-23-93-115.compute-1.amazonaws.com -U zjpssfcewhgwne d7ptthm9u8m7lk > /home/masui/HondanaBackup/postgresql/hondana.postgresqldump
	cp /home/masui/HondanaBackup/postgresql/hondana.postgresqldump /home/masui/HondanaBackup/postgresql/backup`date +%Y%m%d%H%M`
	/usr/bin/s3cmd put /home/masui/HondanaBackup/postgresql/hondana.postgresqldump s3://backup.pitecan.com/hondana/backup`date +%Y%m%d%H%M`

#	/usr/bin/mysqldump -u root hondana > /home/masui/hondana/db/backups/hondana.mysqldump
#	cp /home/masui/hondana/db/backups/hondana.mysqldump /home/masui/hondana/db/backups/backup`date +%Y%m%d`
#	/usr/bin/s3cmd put /home/masui/hondana/db/backups/hondana.mysqldump s3://backup.pitecan.com/hondana/backup`date +%Y%m%d`
