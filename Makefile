update-docker:
	docker-compose build --pull
	docker-compose up -d
