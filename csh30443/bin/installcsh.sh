mkdir -p "../cloudhost/save"
DATE=`date '+%Y%m%d%H%M%S'`
out="../cloudhost/save/mrt-cloudhost-1.0.jar.$DATE"

mv ../cloudhost/mrt-cloudhost-1.0.jar $out
echo Save:$out
curl -s "http://builds.cdlib.org/view/Merritt/job/mrt-cloudhost-pub/ws/cloudhost-jetty/target/mrt-cloudhostjetty-1.0-SNAPSHOT.jar" >  ../cloudhost/mrt-cloudhost-1.0.jar
ls -latd  ../cloudhost/mrt-cloudhost-1.0.jar