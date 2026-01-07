
We are pleased to announce the release of **Bacularis 5.10.0**. This version
introduces useful features for both new Bacularis users and those who have
already been using it.

### Onboarding

First of all, we focused on improvements that make it easier for new users
to get started with Bacularis. These changes cover the following areas:

 * the web interface
 * Bacularis documentation
 * the Bacularis.app website

On the web interface side, a **new welcome screen** is now available, providing
helpful information for first-time users. In addition, we have introduced
a **guided tour**, allowing users to become familiar with the core Bacularis
features. We hope this will significantly improve the onboarding experience
for new users.

### Minimal OS support

Another important addition in version 5.10.0 is support for **minimal operating
systems** (so-called minimal OS), which are commonly used in containerized
environments such as Docker, Podman, LXC, and others - but not limited to them.
This makes it possible to run Bacularis functions (such as certificate installation
or changing the web interface port) in environments where certain basic system tools
(for example, systemd) are not available. The need for these features was reported
by a member of the Bacularis community, **@megapegabot**. These changes also include
support for **APK-based operating systems**, primarily Alpine Linux.

### Deployment features and sudo-rs

We have also introduced support for environment variables in the deployment process
of Bacula components. This made it possible to deliver the remaining pieces of
sudo-rs support, including:

 * installing Bacula from scratch using the installation wizard
 * remote installation of the Bacula database
 * remote installation of the Bacula Director

This change completes the previously missing part of sudo-rs support and successfully
closes the topic of full sudo-rs integration in Bacularis.

### Other changes

In addition, we added support for **Fedora 43** and prepared a new OS deployment profile
for this operating system. We also introduced an LDAP authentication warning dialog,
based on a report from a community user, **lucasljorge**. Finally, we updated the SELinux
module rules and refreshed the translation files.

On the bug fix side, this release includes only minor bug fixes - nothing critical.

We wish you successful installations and upgrades.

The Bacularis Team

## Main changes

**Bacularis Common**

 * Add APK-based system support for installing certificate and web server settings
 * Add support to install certificate and set web server settings in minimal OS (Docker, Podman, LXC...)
 * Add warning to certificate and web server settings for combination of APK-based system and Lighttpd
 * Add new binary package module
 * Add support for Fedora 43
 * Add guided tour tooltip style
 * Update SELinux policy module
 * Fix passing user in su module

**Bacularis Web**

 * Add welcome screen and guided tour
 * Add support for environment variables in deployment with OS profiles
 * Add sudo-rs support for installing Bacula from scratch via Bacularis install wizard
 * Add sudo-rs support for deploying Bacula Catalog
 * Add sudo-rs support for deploying Bacula Director
 * Add new authentication method notice
 * Add OS profile for Fedora 43
 * Enlarge resource list in add/edit role window
 * Update translation files
 * Fix scheduled time column alignment in schedule status

**Bacularis API**

 * Remove using !requiretty sudo flag

