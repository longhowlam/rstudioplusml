## https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu

# install sqlserver on ubuntu
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"
sudo apt-get update
sudo apt-get install -y mssql-server

#sqlserver setup
sudo /opt/mssql/bin/mssql-conf setup

systemctl status mssql-server

# install commandline tools

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/prod.list)"
sudo apt-get update
sudo apt-get install -y mssql-tools unixodbc-dev

echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc

# using SQLSERVER
sqlcmd -S localhost -U SA -P 'pp'

CREATE DATABASE TestDB
SELECT Name from sys.Databases
GO
