.PHONY: build
build:
	docker compose build --no-cache

.PHONY: clean
clean:
	rm -f tmp/pids/server.pid

.PHONY: up
up: clean
	docker compose up

.PHONY: upd
upd: clean
	docker compose up -d

.PHONY: down
down:
	docker compose down

.PHONY: downv
downv:
	docker compose down -v

.PHONY: bundle
bundle:
	docker compose run --rm app bundle --no-cache

.PHONY: console
console:
	docker compose run --rm app bin/rails c

.PHONY: routes
routes:
	docker compose run --rm app bin/rails routes