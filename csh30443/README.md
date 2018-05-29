Admin name: csh30443
Implementation: mrt-cloudhost-dev (uc3-mrtreplic1-dev):/dpr2/apps/csh30443
Function:
Provides a local Merritt Cloudhost used for development. 

Because the cloudhost server runs as an executable jar it does not follow the typical capistrano template for a tomcat servlet.

This repository is used instead of capistrano for preserving this functionality.

installcsh.sh - install existing Jenkins executable jar:
build.cdlib.org(mrt-cloudhost-pub)

runcsh.sh <https port> <http port>
Starts cloudhost in backround and saves pid as ../cloudhost/cshpid.txt

startcsh.sh - default properties using runcsh.sh to start cloudhost

stopcsh.sh - uses ../cloudhost/cshpid.txt to kill -9 local cloudhost

Process:
Run Jenkins build.cdlib.org. Name: mrt-cloudhost-pub Property: unm
Validate successful completion Jenkins
Run bin/installcsh.sh - this process: 
  create cloudhost/
  will extract the executable cloudhost jar from builds.cdlib.org
Run bin/startcsh.sh to start cloudhost
Run bin/stopcsh.sh to stop cloudhost
