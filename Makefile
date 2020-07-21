build: build-image
run: run-image

build-image:
	make -C rafael-twitter-stream-controller
	make -C rafael-twitter-streamer

run-image:
	docker-compose up --remove-orphan
