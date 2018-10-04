# perl-common (cpan)

Docker image for Perl with common modules pre-installed

# Synopsis

```bash
$ docker run -it --rm cpan/perl-common:5.24 perl -v
$ docker run -it --rm cpan/perl-common:5.24-mypg perl -v
```

# Description

This docker image is intended to provide a base image with common modules
preinstalled for use in CI runners. It extends `perl:` docker images.

As well as common Perl modules, it provides a `-mypg` tag suffix which installs
libraries for [PostgreSQL] and [MySQL] which should allow you to spin up
database runners for each RDBMS respectively using [Test::PostgreSQL] and
[Test::mysqld].

# Pre-baked

## CPAN modules

Modules that are included in `cpan/perl-common`.

* [App::cpm](https://p3rl.org/App::cpm) a fast CPAN module installer
* [App::Sqitch](https://p3rl.org/App::Sqitch) Sane database change management
* [Task::Kensho](https://p3rl.org/Task::Kensho) A Glimpse at an Enlightened Perl

## Packages

Packages that are included in `cpan/perl-common:latest-mypg`.

* default-libmysqlclient-dev
* libpq-dev
* mysql-server
* postgresql-client

# See also

* [MySQL]
* [PostgreSQL]
* [Sqitch]

[MySQL]: https://www.mysql.com/
[PostgreSQL]: https://www.postgresql.org/
[Sqitch]: https://sqitch.org/
[Test::PostgreSQL]: https://p3rl.org/Test::PostgreSQL
[Test::mysqld]: https://p3rl.org/Test::mysqld
