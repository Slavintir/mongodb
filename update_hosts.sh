IP=`hostname -I | awk '{print $1}'`

# Beckup file hosts
cp /etc/hosts ./hosts.beckup
echo "Hosts success beckup to hosts.beckup"

sudo echo "$IP mongo1
$IP mongo2
$IP mongo3" | sudo tee -a /etc/hosts

cat /etc/hosts
echo "Hosts success updated"
