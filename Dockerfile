ARG TAG=latest
FROM perl:$TAG

MAINTAINER Paul Williams <kwakwa@cpan.org>

RUN cpanm -n App::cpm \
    && cpm install -g App::Sqitch Task::Kensho \
    && rm -rf ~/.cpanm \
    && rm -rf ~/.perl-cpm
