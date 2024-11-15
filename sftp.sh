SFTP

#
rpm -qa|grep ssh

# PATH
mkdir -p /data/sftp
chmod 701 /data

# create a group for the SFTP
groupadd ftpgroup

# create a user
useradd -g ftpgroup -d /upload -s /sbin/nologin username
passwd username

# create the /upload folder under /data/username
mkdir -p /data/username/upload
chown -R root:username /data/username
chown -R username:ftpgroup /data/username/upload


cat /etc/passwd|grep username

nano /etc/ssh/sshd_config


# install nmap
yum list nmap
yum install nmap -y



# add new user
useradd -g ftpgroup -d /upload -s /sbin/nologin username
passwd username

# create the /upload folder under /data/username
mkdir -p /data/username/upload
chown -R root:username /data/username
chown -R username:ftpgroup /data/username/upload
