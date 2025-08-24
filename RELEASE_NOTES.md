
We are pleased to announce the release of **Bacularis 5.6.0**. This version
introduces several new features, improvements, and a few bug fixes.

One of the most notable additions is the **PostgreSQL database backup plugin**,
a requested feature from our Community, which we committed to delivering in
the last monthly project status update. This new plugin supports logical SQL
dump backups, physical online binary backups, WAL backups, and backups of
special PostgreSQL files. It also includes support for incremental binary
backups introduced in PostgreSQL 17.

For those using the **deployment feature**, we have added new OS profiles for
installing Bacula and Bacularis on **AlmaLinux 10**, **CentOS Stream 10**,
**Oracle Linux 10**, and **Rocky Linux 10**.

To make **bulk user management** easier for system administrators, we’ve added
new actions that allow setting API hosts and API host groups for multiple
users at once.

Additionally, we have improved **Messages resource configuration**, introduced
two new message types, and updated the **SELinux policy module**. Finally,
this release includes couple of bug fixes.

We hope you enjoy a smooth installation and upgrade experience.

## Main changes

**Bacularis Common**

 * Add PostgreSQL database backup plugin
 * Add colon to allowed plugin parameter values
 * Fix MySQL plugin local file restore if plugin config contains spaces
 * Fix MariaDB plugin local file restore if plugin config contains spaces
 * Update SELinux policy module
 * Update application settings file
 * Fix bulk delete jobids

**Bacularis Web**

 * Add bulk set user API hosts and API host groups
 * Add new OS profiles for AlmaLinux/CentOS Stream/Oracle Linux/Rocky Linux 10
 * Add new Message resource message types: Events and Verified
 * Make differences in Message resource between negated and non-negated types
 * Fix error on security page if destination API host is not reachable

