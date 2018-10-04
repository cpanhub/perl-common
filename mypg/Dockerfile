ARG TAG=latest
FROM perl:$TAG

MAINTAINER Paul Williams <kwakwa@cpan.org>

RUN apt-get update \
    && apt-get install -y --no-install-recommends postgresql-client libpq-dev default-libmysqlclient-dev mysql-server \
    && cpanm -n App::cpm \
    && cpm install -g App::Sqitch DBD::Pg DBD::mysql Task::Kensho \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf ~/.cpanm \
    && rm -rf ~/.perl-cpm
