# 
Postmortem
Upon the release of Alx project 0x14. Mysql at approximately 18:30 and 19:00 West African Time(WAT) in Nigeria, an error occurred when I tried installing MySQL distribution 5.7.x on my server  web-01 and it returned a broken installation error which led to me being unable to set up a primary replica infrastructure using Mysql at that point in time.  The root cause was that I already had the current version when I tried to install an older version.
#
Timeline
The issue was detected at approximately 19:00 WAT on Tuesday, November 2022 after I attempted an installation of the same version of MySQL on my web-02 server and it installed successfully. I made online research on the error message I received and got some information on it which was helpful in my debugging and correction process.
#
Root cause and resolution
Bug debugger Ayomide Soniyi a.k.a Ay encountered the error upon installation and the root cause was that I already had the current version when I tried to install an older version. I promptly proceeded to undergo solving the problem.
Checked to see if any version of mysql was installed by entering the command mysql –version.
sudo apt-get purge mysql\*
sudo rm -rf /var/lib/mysql
sudo rm -rf /etc/mysql
sudo dpkg -l | grep -i mysql
sudo apt-get clean
sudo updatedb
sudo apt-get install mysql-client-core-5.7 mysql-client-5.7 mysql-server-5.7.
#
Preventive measures
If not necessary try not to install an older version of a package or language.
If an older version is needed, make sure to delete the current version and install it. 
