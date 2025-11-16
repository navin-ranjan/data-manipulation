.PHONY: up down ps logs restart rebuild

up:
	docker compose up -d

down:
	docker compose down

ps:
	docker compose ps

logs:
	docker compose logs -f

restart:
	docker compose down && docker compose up -d

rebuild:
	docker compose down
	docker compose build --no-cache
	docker compose up -d
