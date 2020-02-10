all: docker-release docker-release-minimal

docker-release:
	DOCKER_BUILDKIT=1 docker build -t kolide/fpm  --build-arg BASE_ENV=everything --build-arg TARGET=release --squash .

docker-push:
	docker push kolide/fpm
