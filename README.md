# Bacularis - The Bacula web interface


![GitHub Release](https://img.shields.io/github/v/release/bacularis/bacularis-app)
![Packagist Downloads](https://img.shields.io/packagist/dt/bacularis/bacularis-app)
![Packagist License](https://img.shields.io/packagist/l/bacularis/bacularis-app)
![Packagist Dependency Version](https://img.shields.io/packagist/dependency-v/bacularis/bacularis-app/PHP)


**Bacularis** is a web interface designed to configure, manage, and monitor the Bacula backup environment. It offers a complete solution for setting up backup jobs, restoring data, managing tape or disk volumes on both local and remote storage, working with backup clients, and handling daily backup administration tasks. Autochanger management is also supported.

Bacularis includes advanced user management with role-based access control, allowing configuration for regular users. Each user can log in to the web interface and perform backup and restore operations for their own computer data only.

## Architecture

The project consists of two web applications:

 * the **web interface**, and
 * the **Bacularis API**, which includes a separate administrative panel.

The web interface can connect to multiple Bacularis API instances, enabling centralized configuration and management of remote Bacula components.

## Project background

**Bacularis** is a friendly fork of **Baculum**. It was created by the creator of Baculum to simplify its functionality—making it accessible not only to experienced Bacula users but also to beginners and intermediate users.

## Requirements

Before installation, ensure you have **PHP >= 7.4** and the following PHP modules installed:

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

One of the methods for installing and updating Bacularis is using **Composer**.

If Composer is not installed on your system, you can use the following commands to install it:

```
curl -s http://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
```

Once Composer is ready, install Bacularis by running:

```
composer create-project bacularis/bacularis-app
```

After installation, run the setup script as the root user. This script will:

 * set appropriate file and directory permissions, and
 * prepare the web server configuration file.

```
bacularis-app/protected/tools/install.sh
```

## Documentation

 * **Bacularis documentation**: https://bacularis.app/doc/
 * **Bacularis API documentation**: https://bacularis.app/api/

## Live Demo

Want to try Bacularis before installing it? Visit the live demo at:

https://demo.bacularis.app

## Project homepage

Main project website: https://bacularis.app
