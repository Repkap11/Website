up:
	docker-compose up -d

down:
	docker-compose down

list:
	docker-compose ps

logs:
	docker logs website_nginx_1

test:
	google-chrome ~/Software/website/data/website/index.html &
