#!/bin/bash
curl -k -X GET 'https://uc3-mrtreplic1-dev.cdlib.org:30443/cloudhost/state/8100?t=xml'
echo "#############################################################"
./genfunc.sh 'http://uc3-mrtreplic1-dev.cdlib.org:30443' '8100' 'gen'
