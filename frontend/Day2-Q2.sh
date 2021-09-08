
cd Cassandra-maven/
git clone https://github.com/jawad3/cassandra-maven-frontend.git
cd cassandra-maven-frontend/
docker build -t 059755/frontend-maven .
docker run -d --name cass -p 3001 059755/frontend-maven
docker push 059755/frontend-maven
docker exec -ti front /bin/bash
docker rm -f front
docker rmi -f 059755/frontend-maven
#####