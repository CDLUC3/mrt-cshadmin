#!/bin/bash
HOST='http://oneshare-test.unm.edu:8080'
LOCATION='8101'
FILEKEY='gen'

printf "\n\n***Get status\n"
./status.sh $HOST $LOCATION

printf "\n\n***Get state\n"
./state.sh $HOST $LOCATION

printf "\n\n***Cleanup delete\n"
./delete.sh $HOST $LOCATION $FILEKEY

printf "\n\n***Initial add\n"
./add.sh $HOST $LOCATION $FILEKEY

printf "\n\n***Initial meta\n"
./meta.sh $HOST $LOCATION $FILEKEY

printf "\n\n***Final delete\n"
./delete.sh $HOST $LOCATION $FILEKEY

printf "\n\n***Final meta - should be empty\n"
./meta.sh $HOST $LOCATION $FILEKEY
