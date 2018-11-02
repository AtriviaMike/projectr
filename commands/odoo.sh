#! usr/bin/bash

apt-get update
apt-get -y update
apt-get install python3-pip
pip3 install Babel decorator docutils ebaysdk feedparser gevent greenlet html2text Jinja2 lxml Mako MarkupSafe mock num2words ofxparse passlib Pillow psutil psycogreen psycopg2 pydot pyparsing PyPDF2 pyserial python-dateutil python-openid pytz pyusb PyYAML qrcode reportlab requests six suds-jurko vatnumber vobject Werkzeug XlsxWriter xlwt xlrd
apt-get install -y npm
ln -s /usr/bin/nodejs /usr/bin/node
npm install -g less less-plugin-clean-css
apt-get install node-less
apt-get install python-software-properties
touch /etc/apt/sources.list.d/pgdg.list
echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" >> /etc/apt/sources.list.d/pgdg.list
apt-get install wget
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
apt-get update
apt-get install postgresql-9.6
/etc/init.d/postgresql start
su -c "createuser -s odoo" postgres
su -c "createuser -s root" postgres
adduser --system --home=/opt/odoo --group odoo
cd /opt/odoo
wget https://pypi.python.org/packages/a8/70/
tar zxvf gdata-2.0.18.tar.gz
chown -R odoo: gdata-2.0.18
cd gdata-2.0.28/
python setup.py install 
cd ..
apt-get install git
su -c "mkdir odoo && git clone https://www.github.com/odoo/odoo --depth 1 --branch 11.0 --single-branch" odoo -s /bin/bash
mkdir /var/log/odoo
chown -R odoo:root /var/log/odoo
touch /etc/odoo.conf
echo "[options]

; This is the password that allows database operations:

; admin_passwd = admin

db_host = False

db_port = False

db_user = odoo

db_password = False

logfile = /var/log/odoo/odoo-server.log

addons_path = /opt/odoo/addons,/opt/odoo/odoo/addons " >> /etc/odoo.conf
chown odoo: /etc/odoo.conf
apt-get -f install
wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb
dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb
cp /usr/local/bin/wkhtmltoimage /usr/bin/wkhtmltoimage
cp /usr/local/bin/wkhtmltopdf /usr/bin/wkhtmltopdf
cd /opt/odoo/odoo
echo "*******************************************************************
      para correr el servidor odoo , ingresa el comando ./odoo-bin

      thats all folks!
      *******************************************************************
"

