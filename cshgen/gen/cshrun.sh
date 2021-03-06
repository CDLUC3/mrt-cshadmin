#!/bin/bash
#Start script without log
#Form: 
# cshrun <https port for unsigned cert> <http port>
#Example
# cshrun 30443 38080
# Options allow a cloudhost node as 3rd argument - default=8100

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
java -jar mrt-cloudhost-1.0.jar $PW $SSL $PORT $NODE
