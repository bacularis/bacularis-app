
We are pleased to announce the release of **Bacularis 5.9.0**. This version introduces
several important new features and improvements, which you can find detailed below.

### MS SQL Server database plugin

We have introduced a brand-new **plugin** for backing up **Microsoft SQL Server databases**.
It provides advanced protection for:

 * Databases
 * Transaction logs
 * Encryption data

The plugin supports both Windows and Linux MS SQL Server instances, in local
as well as remote locations. It also includes **Point-in-Time Recovery** (PITR)
directly available from the web interface.

All technical details for this plugin are available in the dedicated documentation
chapter:

https://bacularis.app/doc/plugins/database/microsoft-sql-server-backup-plugin.html

### Sudo-rs support

In version ``5.9.0``, we have also added basic support for **sudo-rs**. Below
 is a list of features currently supported with sudo-rs. Full support is planned
 for future releases after ``5.9.0``.

 * Bconsole command execution
 * Bacula JSON tools (Bacula configuration-related functions in Bacularis)
 * Actions (starting, stopping, and restarting Bacula components)
 * Software Management:

   * Deploying the Bacula File Daemon
   * Deploying the Bacula Storage Daemon
   * Deploying the Bacula Bconsole

 * Installing TLS/SSL certificate
 * Changing web server port

Please note that these sudo-rs changes are fully transparent to Bacularis users
and do not require any additional actions or configuration. Traditional sudo
continues to be fully supported and will remain supported in the future.

### Other functions

We have added a new **OS profile** for Bacula and Bacularis deployments
on **Ubuntu 25.10 Questing Quokka**.

We have also improved debug logging, with special focus on plugin-related messages.

### Fixes

This release includes several bug fixes. One notable fix addresses issues
 with OIDC login when using Alpine-based Docker container images.

We wish you easy installations and successful upgrades!


## Main changes

**Bacularis Common**

 * Add MS SQL Server database backup plugin
 * Add support for sudo-rs
 * Add windows path checker
 * Add debug log to execution commands
 * Log debug if enabled by debug parameter
 * Improve mask password pattern
 * Enable short param support in prepare command parameters
 * Set global debug parameter
 * Update application configuration
 * Fix server-name parameter in MS SQL Server plugin

**Bacularis Web**

 * Add support for sudo-rs
 * Add OS profile for Ubuntu 25.10 Questing Quokka
 * Stop passing unmodified options to restore process
 * Enable using multi-category plugin parameters in restore wizard
 * Fix unassign API hosts from API host groups on host remove
 * Fix PHP error in web config wizard

