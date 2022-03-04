#!/bin/bash
echo "What Version Number to use?"
read VERSION

if [ docker images myapp:${VERSION} ]
then
        docker rmi myapp:${VERSION}
fi

cd /home/graham_hepplestone/LBG-API
docker build -t myapp:${VERSION} .

