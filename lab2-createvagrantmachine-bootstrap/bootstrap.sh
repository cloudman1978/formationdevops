#!/usr/bin/env bash

yum -y update
yum -y install httpd
systemctl enable httpd
systemctl start httpd

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
  <body>
    <h1>votre première page provionnée automatiquement </h1>
  </body>
</html>
EOF