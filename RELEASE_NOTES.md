
We are pleased to let you know about a new Bacularis release. We continue
the action "Bacula for Everybody!" for making first contact with Bacula
easier for new users and this time we prepared a new file storage wizard.
It enables to create both single storage devices and multi-device autochangers
as well.

Second significant change is support for plugins. This is a friendly plugin
interface to easily extend Bacularis for new functions. The first step in this
feature is support for the web interface plugins. To prepare a plugin you will
need a bit of knowledge about PHP language and object-oriented programming. If
you are not strong PHP programmer, don't worry, it is really simple interface
to create new plugins. We also prepared two first plugins: for e-mail
notifications and for Mattermost notifications.

Finally, we would like to thank the entire Community for bug reports, ideas and
for being active. With your involvement we can much more.

## Main changes

**Bacularis Web**
 - Add new file storage wizard
 - Add support for plugins
 - Add e-mail notification plugin
 - Add Mattermost notification plugin
 - Simplify restore wizard and use restore path from restore job
 - Add audit logging to new functions
 - Fix setting job properties in run job window
 - Fix auto-switching job summary tab on job view page
 - Fix virtualfull job wizard for using existing jobs
 - Fix using custom Bacula package repository in OS profile
 - Move new storage wizard error messages to error window

**Bacularis API**
 - Add name parameter to /storages API endpoint
 - Add default operator for SQL query criterias

**Bacularis Common**
 - Add interfaces to create new plugins
 - Add checking method if subtab is opened
 - Fix install Bacula using initial wizard if SELinux is enabled

