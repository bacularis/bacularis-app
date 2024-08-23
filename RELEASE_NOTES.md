
This is a new major Bacularis release. It provides in the install wizard a new
capability to install and configure complete Bacula environment to work with
Bacularis. It means that to install Bacularis first time having the Bacula
environment is no longer required. This function can be specially useful for
new users that don't know Bacula and they would like to try Bacula in easy way.
At start Bacularis wizard supports nineteen various Linux distributions and versions.
This move is a first step in organized by the Bacularis Project a global action
named "Bacula for Everybody!" which main goal is to popularize using Bacula. More
information about it you can find on the Bacularis.app website.

In addition, we have added some new functions and improvements such as bulk run job
action in the job list, the repository auth configuration on deployment page or
a new deployment function to deploy the catalog database. We updated the SELinux
module as well. At the end we fixed some bugs reported by the Community.

## Recreating assets cache

One of the bugs is about default wrong permissions set in the Bacularis assets cache
directory. We recommend to clear the assets directory by removing content of this
directory (with keeping this directory empty). This cache will be re-created
automatically with correct permissions.

For installation using binary packages the assets directory is in this path:

```
/var/cache/bacularis
```

For manual installation the assets directory is here:

```
[project_dir]/htdocs/assets
```

The bug report is here:
https://github.com/bacularis/bacularis-web/issues/6

## New PostgreSQL server in the Docker container images

There has been updated to version ``16`` the PostgreSQL database server in
the ``bacularis-standalone`` and ``bacularis-api-dir`` container images. Users
using thsese images after updating will need to manually do the database data format
upgrade between major PostgreSQL versions ``15`` -> ``16`` by ``pg_upgrade``.

Below you can find full list of new changes in Bacularis ``4.0.0``:

## Main changes

**Bacularis Web**
 - Add repository auth configuration on deployment page
 - Add Bacula catalog deployment capability and support in OS profiles
 - Add bulk run job action to job list
 - Add repo auth module
 - Fix unassign removed API hosts from users
 - Fix missing end-of-line character in user file provided on deploying
 - Fix typo error in web config wizard
 - Update Polish translations

**Bacularis API**
 - Add to initial wizard capability to install and configure complete Bacula environment to use with Bacularis
 - Initial wizard visual improvements
 - Make /jobs/run endpoint job parameters as optional
 - Update API documentation

**Bacularis Common**
 - Add timeout directives to web server config files
 - Add new system modules
 - Update SELinux module
 - Improve set permission script
 - Fix missing end-of-line character in last line of user config file
 - Fix wrong dir/file permissions in cache directory
 - Fix default parameter value

