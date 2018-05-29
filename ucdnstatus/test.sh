#!/bin/bash
HOST='http://oneshare-test.unm.edu:8080'
LOCATION='8101'
FILEKEY='gen'
./state.sh $HOST $LOCATION
./status.sh $HOST $LOCATION
./meta.sh $HOST $LOCATION $FILEKEY
./add.sh $HOST $LOCATION $FILEKEY
./meta.sh $HOST $LOCATION $FILEKEY
./delete.sh $HOST $LOCATION $FILEKEY
