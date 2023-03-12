yum install mongodb-org -y 
sed -i -e "s/127.0.0.0/0.0.0.0"
systemctl enable mongod 
systemctl restart mongod gi