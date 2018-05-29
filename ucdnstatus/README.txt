Admin name: ucdnstatus
Implementation: uc3-mrtstore2-prd:/apps/dpr2store/admin/csh-admin/ucdnstatus
Function:
This tool is used to validate that the typical cloudhost commands are functioning
properly at a cloudhost site whether tomcat or standalone 

./genfunc.sh <cloudhost base:port> <cloudhost local node> <file name extension>

Examples:
./genfunc.sh 'http://oneshare.unm.edu:8080' '8101' 'gen'
http://oneshare.unm.edu:8080 - base tomcat url
8101 = cloudhost local node - ./fileCloud
gen - name extension test - (any)

./genfunc.sh 'https://uc3-mrtreplic1-dev.cdlib.org:30443' '8100' 'gen'
 'https://uc3-mrtreplic1-dev.cdlib.org:30443' - base cloudhost url
8100 = cloudhost local node - pairtree: /opt/oneshare/nodecsh/fileCloud
gen - name extension test - (any)

Individual genfunc.sh test:
status=`./status.sh $HOST $LOCATION`
state=`./state.sh $HOST $LOCATION`
add=`./add.sh $HOST $LOCATION $FILEKEY`
meta1=`./meta.sh $HOST $LOCATION $FILEKEY`
fixity=`./fixity.sh $HOST $LOCATION $FILEKEY`
dataget=`./get.sh $HOST $LOCATION $FILEKEY`
delete2=`./delete.sh $HOST $LOCATION $FILEKEY`
meta2=`./meta.sh $HOST $LOCATION $FILEKEY`

genfunc.sh output:
* test properties
* test status

Example:
http://oneshare-test.unm.edu:8080 ; 8101 ; gen-665313284
"TEST OK" - all tests pass
  OR
"***ERROR <type> <message if exists"


Process:
Add genfunc.sh line to ./all.sh script for all cloudhost to be tested
./all.sh
Review each test

./all.sh output example:
#############################################################
http://oneshare-test.unm.edu:8080 ; 8101 ; gen-665313284
TEST OK
-------------------------------------------------------------------------
http://oneshare.unm.edu:8080 ; 8101 ; gen-145227410
TEST OK
-------------------------------------------------------------------------
https://uc3-mrtreplic1-dev.cdlib.org:30443 ; 8100 ; gen-649621450
***ERROR STATE FAILS:
