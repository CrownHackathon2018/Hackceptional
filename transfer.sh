# transfer.sh

cd /tmp/build
echo "Creating $1.tar" >> /tmp/build.log
# use hardcoded tar file
tar -cf hackathon.tar SY/*.r
echo "FTP'ing hackathon.tar" >> /tmp/build.log
ftp -v -n > /tmp/buildftp.log <<-EOF

open gis-saturntest-01
user main towers
cd /sysCstg2/syco/release
put hackathon.tar


