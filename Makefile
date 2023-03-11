.PHONY: docker-compile-watch, docker-run-watch, docker-run

IMAGE = "node:19.3.0-alpine"

docker-interactive:
	docker run \
		--tty \
		--interactive \
		--rm \
		--volume $(PWD):/home/node/source \
		--workdir /home/node/source \
		$(IMAGE) \
		/bin/ash -l

docker-compile-watch:
	docker run \
		--tty \
		--rm \
		--workdir /home/node/source \
		--volume $(PWD):/home/node/source \
		$(IMAGE) \
		npm run dev

docker-run-watch:
	docker run \
		--tty \
		--rm \
		--workdir /home/node/source \
		--volume $(PWD):/home/node/source \
		$(IMAGE) \
		npm run watch-output

