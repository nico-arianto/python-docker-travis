docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
docker push nico0arianto/python-travis:$TRAVIS_TAG
