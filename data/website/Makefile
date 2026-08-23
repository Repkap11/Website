.PHONY: build
build:
	hugo --gc --cleanDestinationDir --minify

.PHONY: server
server:
	hugo server -D -p 8080


.PHONY: deploy
deploy:
	rsync -avz --delete public/ paul@repkap11.com:~/website/public
