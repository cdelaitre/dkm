include ../../Makefile

## Variables
# Static
REGISTRY_REMOTE=jfrog-docker-registry.bintray.io
NAMESPACE=jfrog
CONTAINER=artifactory-oss
TAG=latest
CONTAINER_HOME=/var/opt/jfrog/artifactory
CONTAINER_PORT=52081:8081
CONTAINER_VOLUMES=backup data etc logs
DOCKER_VOLUMES=--volume ${CONTAINER_PATH}/data:${CONTAINER_HOME}/data \
--volume ${CONTAINER_PATH}/backup:${CONTAINER_HOME}/backup \
--volume ${CONTAINER_PATH}/etc:${CONTAINER_HOME}/etc \
--volume ${CONTAINER_PATH}/logs:${CONTAINER_HOME}/logs
