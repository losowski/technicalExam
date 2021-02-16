#!/bin/sh
# Script to build a DevOps test environment
# CentOS
# Install applications
<<<<<<< HEAD
yum install --assumeyes openssh-server openssh-clients shadow-utils vim grep net-tools postgresql python3 git tmux
=======
yum install --assumeyes openssh-server openssh-clients shadow-utils vim grep net-tools postgresql python3 git
>>>>>>> 56c9274934833295244cc38c9d70daaa7d1451c7
# Create users
useradd -m 'demo' -s /bin/bash
echo 'demo:emo123d' | chpasswd

# Start the SSH Daemon
systemctl start sshd
systemctl status sshd

# Generate the SSH keys
#ssh-keygen

# Start the Postgresql Database
systemctl start postgresql

# Build Database
(
	cd postgres
	source create.sh
	source psql_login.sh < create_demodb.sql
	source psql_login.sh < backup/animals_data
	source psql_login.sh < backup/names_data
	source psql_login.sh < backup/colours_data
)

# Stop the Postgresql database
systemctl stop postgresql
