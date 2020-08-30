#!/bin/bash
docker-compose up -d
echo "In five seconds, we'll set up a replica."
sleep 5
docker exec -it mongo-cluster-1 mongo --eval "rs.initiate({ _id : 'rs0', members: [ { _id: 0, host: 'mongo1:27017' }, { _id: 1, host: 'mongo2:27017' }, { _id: 2, host: 'mongo3:27017' } ] })"
clear

echo "You can connect to mongodb by this url: mongodb://`hostname -I | awk '{print $1}'`:27017/?replicaSet=rs0"