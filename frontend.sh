#Installing Nginx
echo -e "\e[1;31m Installing Nginx \e[0m]"
yum install nginx -y 

#Removing the default files
echo -e "\e[1;31m Removing default files \e[0m"
rm -rf /usr/share/nginx/html/* 

#Downloading the frontend content
echo -e "\e[31m Downloading frontend content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip 

cd /usr/share/nginx/html 

#Unzipping the frontend content
echo -e "\e[31m Unzipping the frontend content\e[0m"
unzip /tmp/frontend.zip

#Stating Nginx 
echo -e "\e[31m Starting and Enabling frontend\e[0m"
systemctl enable nginx 
systemctl restart nginx 