# Mongo replication with docker compose

Before install you should have installed: **docker, docker-compose**

- Howe get docker look [here 👈](https://docs.docker.com/get-docker/)
- Docker-compose [here👈](https://docs.docker.com/compose/install/)
### ***Steps for install***

1. Clone this repository 'git clone git@github.com:Slavintir/mongodb.git'
2. Open the cloned directory then added previsions for 'up.sh' file 'chmod +x up.sh'
3. The complete installation replica './install.sh'
4. If your IP do not have DNS name 'chmod + x update_hosts.sh; ./update_hosts.sh'

'''
git clone git@github.com:Slavintir/mongodb.git; cd ./mongodb; chmod +x install.sh; ./install.sh;
'''

> If need stop database execute 'docker-compose down'
> To run execute 'docker-compose up -d'