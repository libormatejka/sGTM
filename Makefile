# Start dev environment
up:
	docker-compose --project-name sgtm -f ./docker-compose.yml up -d --remove-orphans;
	@echo 'App is running on http://localhost';

# Start dev environment with forced build
up\:build:
	docker-compose --project-name sgtm -f ./docker-compose.yml up -d --build;

# Stop dev environment
down:
	docker-compose --project-name sgtm -f ./docker-compose.yml down;

# Show logs - format it using less
logs:
	docker-compose --project-name sgtm -f ./docker-compose.yml logs -f --tail=10 | less -S +F;

# Exec sh on Node container
exec\:sgtm:
	docker-compose --project-name sgtm -f ./docker-compose.yml exec sgtm /nodejs/bin/node;