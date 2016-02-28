mkdir ~/opt
wget http://download.java.net/glassfish/4.1.1/release/glassfish-4.1.1-web.zip
unzip glassfish-4.1.1-web.zip
rm glassfish-4.1.1-web.zip
./glassfish4/bin/asadmin start-domain

