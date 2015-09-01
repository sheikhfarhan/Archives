## To housekeep mysql log files
## The mysql log files will be auto-created as per my.cnf

Create and Open new file "mysql" in /etc/logrotate.d

$ vi /etc/logrotate.d/mysql

Enter below config in the file:

#Begin
/var/log/mysql/mysql.log
/var/log/mysql/error.log
/var/log/mysql/mysql-slow.log
{
        rotate 7
        weekly
        missingok
        notifempty
        delaycompress
        compress
        copytruncate
        }
#End

Save & Exit

Test:
$ logrotate -v -f /etc/logrotate.d/mysql


