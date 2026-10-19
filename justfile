start:
    docker compose up -d

stop:
    docker compose down

restart: stop start

update:
    docker compose down
    docker compose pull
    docker compose up -d

logs:
    docker compose logs -f bifrost
