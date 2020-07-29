git clone https://github.com/alexshavlovsky/mynotes-material-client.git
git clone https://github.com/alexshavlovsky/mynotes-springboot-service.git
cd ./mynotes-springboot-service || exit
mvn clean package
cd ..
docker-compose up --build
