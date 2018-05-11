# release.sh

echo "Release $1 $2" >> /tmp/release.log
cd /sysCstg2/syco/bin
# use hardcoded
tar -xvf /sysCstg2/syco/release/hackathon.tar >> /tmp/release.log
