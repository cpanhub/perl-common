#!/usr/bin/env bash

set -e

docker build -f $DOCKERFILE -t cpan/perl-common:$PERL$SUFFIX --build-arg TAG=$PERL .

if [ "$TRAVIS_BRANCH" == "master" ]; then
  docker login -u cpan -p "$DOCKER_PASSWORD"
  docker push cpan/perl-common:$PERL$SUFFIX
  if [[ "$LATEST" ]]; then
    docker tag cpan/perl-common:$PERL$SUFFIX cpan/perl-common:$LATEST
    docker push cpan/perl-common:$LATEST
  fi
fi
