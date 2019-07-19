build:
	docker-compose \
		--project-directory=${PWD} \
		--project-name=dotnet-nodejs \
		-f docker-compose.yml \
		build ${ARGS}

push:
	docker login
	docker-compose -f docker-compose.yml push
