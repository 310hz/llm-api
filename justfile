start:
    docker compose up -d

stop:
    docker compose down

restart: stop start

update:
    docker compose pull

logs:
    docker compose logs -f bifrost
