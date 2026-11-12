
Hello Community,

We are pleased to announce the release of Bacularis 7.1.0. In this release,
we have focused primarily on developing two new plugins that extend
Bacularis capabilities in data protection and backup security verification.

The first plugin provides backup and restore support for InfluxDB databases.
The idea for this plugin came from a member of our community, and we are happy
to make it available as a ready-to-use module. The new plugin extends Bacularis
capabilities to include support for InfluxDB, a time-series database (TSDB).
Its features include:

* Backing up entire InfluxDB instances.
* Backing up all or selected buckets.
* Restoring data directly to an InfluxDB server or to a local directory.
* Exporting bucket data in a portable format.
* Additional backup and restore options.

Detailed information about the InfluxDB plugin is available in the documentation:

https://bacularis.app/doc/plugins/database/influxdb-2-backup-plugin.html

The second new addition is the YARA Malware & Pattern Detection plugin. This
new Restore Verification checker enables scanning backup data for malware and
patterns defined in YARA rules.

The plugin supports two scanning engines: classic YARA and the newer YARA-X.
Through its integration with Restore Verification, users can automatically scan
backup data for potential threats and suspicious patterns. Users can also use
existing YARA rule sets or create their own rules tailored to their specific
environments.

We hope this new plugin will help users enhance the security of the data stored
in their Bacula backups.

More information about the YARA Malware & Pattern Detection plugin is available
in the documentation:

https://bacularis.app/doc/restore-verification/checker-plugins/available-checkers/yara-malware-and-pattern-detection.html

In Bacularis 7.1.0, we have also fixed an issue affecting Bacularis deployment
when using operating system profiles (OS profiles) created with older versions
of Bacularis. The issue was reported by our community member mateus, who also
provided the fix. Many thanks for this contribution!

We have also improved error reporting in Bacularis plugins and introduced several
other minor fixes and improvements.

We hope the new features in Bacularis 7.1.0 will be useful in your backup
environments. We wish you successful installations and upgrades.

The Bacularis Team

### Main changes

**Bacularis Common**

* Add InfluxDB 2.x database backup plugin
* Add malware and pattern detection checker plugin
* Add shell error handler classes
* Add plugin exception classes
* Add method to execute program with literal arguments
* Make checker configuration support independent on checker historical-data support
* Prepare real path helper
* Prepare execute process method
* Register InfluxDB 2.x plugin in application
* Use shell error handler for plugins
* Refine character pattern for plugin configuration name

**Bacularis Web**

* Fix deploy API host using older custom OS profile

