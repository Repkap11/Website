up:
	docker compose up -d

down:
	docker compose down

list:
	docker compose ps

logs:
	docker logs website-nginx-1

cert-logs:
	docker logs website-certbot-1

logs-clear:
	sudo sh -c 'truncate -s 0 /var/lib/docker/containers/*/*-json.log'

test:
	google-chrome ~/Software/website/data/website/index.html &
