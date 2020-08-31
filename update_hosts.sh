IP=`hostname -I | awk '{print $1}'`

sudo echo "$IP mongo1
$IP mongo2
$IP mongo3" | sudo tee -a /etc/hosts

cat /etc/hosts
echo "Hosts success updated"
