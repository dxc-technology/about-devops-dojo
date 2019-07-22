#!/bin/sh

# Algorithm for build and test on UCP / Docker Data Center:
# - Create a Docker data container and copy files from checkout
# - Run a "build" container by mounting data container as volume
# - Run a "test" container by mounting data container as volume

doExit () {
    echo "Cleanup data container and exit... -------------------------"
    # Clean-up
    docker rm ${DATA_CONTAINER}

    exit ${1}
}

echo "Creating data container... ---------------------------------"
DATA_CONTAINER="$(docker create -v /srv/jekyll alpine true)"
docker cp . ${DATA_CONTAINER}:/srv/jekyll

echo "Building site with Jekyll in Docker... ---------------------"
docker run \
    --rm \
    --volumes-from ${DATA_CONTAINER} \
    --workdir /srv/jekyll \
    jekyll_devopssite sh -c "sudo chown -R jekyll:jekyll . && jekyll build --config _config.yml,_config-dev.yml" "$@"
rc=$?
[ $rc -eq 0 ] || doExit "$rc"
# Now test!
echo "Running HTML tests... --------------------------------------"
docker run \
    --rm \
    --volumes-from ${DATA_CONTAINER} \
    htmlproofer \
        --log-level debug \
        --url-swap "http.\/\/localhost.4000/:/" \
        --url-ignore /localhost:4000/,/\/rndwiki.corp.hpecorp.net\//,/\/issues\//,/\/edit/,\/hide/ \
        /srv/jekyll/_site
rc=$?
[ $rc -eq 0 ] || doExit "$rc"
echo "Running Spell Check tests... -------------------------------"
docker run \
    --rm \
    --env="http_proxy=http://web-proxy.corp.hpecorp.net:8080" \
    --volumes-from ${DATA_CONTAINER} \
    --workdir /srv/jekyll/ \
    mdspell \
        --ignore-numbers \
        --ignore-acronyms \
        --no-suggestions \
        --report \
        --en-us \
        "*.md" "*/*.md" "*/*/*.md"
rc=$?
[ $rc -eq 0 ] || echo "*** Spelling errors: consider editing .spelling file"
[ $rc -eq 0 ] || doExit "$rc"
echo "------------------------------------------------------------"

doExit "$rc"
