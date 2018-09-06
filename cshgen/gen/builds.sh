DEST='../cloudhost'
pth="$(dirname -- "$0")"
echo path $pth
cd $pth
rm -r $DEST 
mkdir $DEST
cp ./cshrun.sh $DEST/.
cp ./cshrunlog.sh $DEST/.
cp ./testrun.sh $DEST/.
cp ./state.sh $DEST/.
cp ./sslstate.sh $DEST/.
cp ./README.txt $DEST/.
curl -s "http://builds.cdlib.org/view/Merritt/job/mrt-jetty-cloudhost/ws/cloudhost-jetty/master/mrt-cloudhost-1.0.jar"  > $DEST/mrt-cloudhost-1.0.jar
cd ..
zip cloudhost.zip cloudhost/*
rm -r cloudhost
