start-dev:
    docker compose up -d

stop-dev:
    docker compose down

start-psql:
    psql -h localhost -p 4566 -d dev -U root

create-datagen:
    psql -h localhost -p 4566 -d dev -U root -f ./sql/datagen.sql
