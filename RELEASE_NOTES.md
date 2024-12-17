
This is a bug fix release. We fixed bugs reported by Community. Apart from that
we prepared changes to support openSUSE / SLES binary packages. At the end
we did improvements in the deployment function and we updated the SELinux policy
module.

## Main changes

**Bacularis Common**

 * Add PHP listen address parameter to install script
 * Add follow symlinks option to Apache config
 * Update SELinux policy module
 * Update web server config templates
 * Fix logout button that in some cases could direct to localhost instead to current address
 * Fix PHP warning if login form is sent with empty user and password
 * Disable PHP-CS-Fixer rule for blank lines

**Bacularis Web**

 * Add Fedora 41 repository support in OS profiles
 * Add postgresql-contrib installation
 * Fix PHP error in restore wizard if no job is selected to restore.
 * Disable PHP-CS-Fixer rule for blank lines

**Bacularis API**

 * Add example sudo setting for SLES/openSUSE
 * Disable PHP-CS-Fixer rule for blank lines

