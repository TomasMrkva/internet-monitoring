export POSTGRES_USER="postgres"
export POSTGRES_PASSWORD="postgres"
export POSTGRES_DB="postgres"

mkdir data/postgres

docker-compose rm -f
docker-compose up --build