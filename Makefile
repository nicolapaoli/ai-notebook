CONTAINER_NAME:=ai-notebook
DOCKER_IMAGE:=nicolapaoli/ai-notebook
LOCAL_PORT:=8888

build:
	docker build -t ${DOCKER_IMAGE} .

stop:
	docker stop ${CONTAINER_NAME} && docker rm ${CONTAINER_NAME}

start:
	docker run -v ${PWD}:/ai -it -p ${LOCAL_PORT}:8888 --name ${CONTAINER_NAME} ${DOCKER_IMAGE}

restart:
	echo "Restarting.."
	make stop
	make start

freeze:
	docker run -v ${PWD}:/ai --name ${CONTAINER_NAME}-freeze ${DOCKER_IMAGE} pip freeze > requirements.txt
	docker rm ${CONTAINER_NAME}-freeze