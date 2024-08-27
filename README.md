# Bacularis - The Bacula web interface

Bacularis is a web interface to configure, manage and monitor Bacula backup environment. It is a complete solution for setting up backup jobs, doing restore data, managing tape or disk volumes in local and remote storage, work with backup clients, and doing daily administrative work with backups. It also supports autochanger management. Bacularis provides advanced user management and role-based access control that enable to configure it for regular users where every user can log in to the web interface and does backup and restore own computer data only.

![GitHub Release](https://img.shields.io/github/v/release/bacularis/bacularis-app)
![Packagist Downloads](https://img.shields.io/packagist/dt/bacularis/bacularis-app)
![Packagist License](https://img.shields.io/packagist/l/bacularis/bacularis-app)
![Packagist Dependency Version](https://img.shields.io/packagist/dependency-v/bacularis/bacularis-app/PHP)


The project consists of two web applications: the web interface and Bacula programming interface (API) with separate administrative panel. The web interface can work with multiple Bacularis API instances to configure and manage remote Bacula components.

Bacularis is a friendly fork of Baculum. It has been founded by Baculum's creator to simplify Baculum features that they could be used not only by users with strong Bacula skills but also by beginners or intermediate users.

## Requirements

Before installing please make sure you have installed PHP >= 7.4 and the following PHP modules:

 - php-bcmath
 - php-curl
 - php-dom
 - php-json
 - php-ldap
 - php-mysqlnd
 - php-pdo
 - php-pgsql
 - php-intl

## Installation

One of the ways to install and update Bacularis is using Composer for that.

If you don't have Composer installed, you can use the following commands to install it:

```
curl -s http://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
```

Once it is done, you can install Bacularis:

```
composer create-project bacularis/bacularis-app
```

At the end you need to run as the root user an install script that will set permissions for files and directories and also that will prepare the web server configuration file:

```
bacularis-app/protected/tools/install.sh
```

## Upgrade

To upgrade Bacularis you need to run the following command in the Bacularis project directory:

```
composer update
```

## Documentation

Bacularis documentation is available here: https://bacularis.app/doc/

Bacularis API documentation you can find here: https://bacularis.app/api/

## Live Demo

If you would like to try Bacularis before installing it, you can try live demo available at the following address:

https://demo.bacularis.app

## Project homepage

The project main page is https://bacularis.app

