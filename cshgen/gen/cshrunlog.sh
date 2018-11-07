#!/bin/bash
#Start script with log
#Form: 
# cshrun <https port for unsigned cert> <http port>
#Example
# cshrun 30443 38080

PW=cdluc3
SSL=$1
PORT=$2
NODE=$3

if [ ! -z "$PORT" ] 
then
   export CLOUDHOST_PORT=$PORT
fi
echo set port $CLOUDHOST_PORT

if [ ! -z "$SSL" ] 
then
   export CLOUDHOST_SSL=$SSL
fi
echo set ssl $CLOUDHOST_SSL
if [ -z "$NODE" ]
then
   NODE=8100
fi

echo Default node: $NODE

#Set logname
mkdir ../logs
DATE=`date '+%Y-%m-%d'`
logname="cloudhost-$DATE.log"

java -jar mrt-cloudhost-1.0.jar $PW $SSL $PORT $NODE > ../logs/$logname 2>&1
