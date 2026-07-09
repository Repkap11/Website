.PHONY: build
build:
	hugo --gc --cleanDestinationDir --minify --baseURL="http://localhost:8080"

.PHONY: server
server:
	hugo server -D -p 8080


.PHONY: deploy
deploy:
	hugo --gc --cleanDestinationDir --minify
	rsync -avz --delete public/ paul@repkap11.com:~/website/public
