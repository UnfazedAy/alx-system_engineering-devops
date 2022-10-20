# Installs a Nginx server

exec {'install':
  provider => shell,
  command  => 'sudo apt-get -y update ; sudo apt install nginx -y ; echo "Hello World!" | sudo tee /var/www/html/index.html ; sudo sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me https:\/\/github.com\/VicNW permanent;/" /etc/nginx/sites-available/default ; sudo service nginx start',
}
