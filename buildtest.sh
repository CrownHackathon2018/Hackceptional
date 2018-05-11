# buildtest.sh

echo "Build Started" >> /tmp/build.log
echo $1  >> /tmp/build.log
cd /sysC/syco/release/build
rm -R -f  /tmp/build
# ToDo: convert origin/hackathon to Hacakthon
git clone --depth 1 -b Hackathon http://gisadmin:09gisadmin09@msd-tfs-01:8080/tfs/NonDotNet/_git/Syco /tmp/build
# ToDo: determine which programs to compile
/usr/v91e/dlc/bin/bpro -p /sysC/syco/build/compile.p -param "sylicfmt.p" -h 12
echo "Build Comlete" >> /tmp/build.log
#exit 1
