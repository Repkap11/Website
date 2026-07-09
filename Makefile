build:
	cd data/website && hugo --gc --cleanDestinationDir --minify

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

reload:
	docker exec -it website-nginx-1 nginx -t
	docker exec -it website-nginx-1 nginx -s reload


test:
	google-chrome ~/Software/website/data/website/index.html &

