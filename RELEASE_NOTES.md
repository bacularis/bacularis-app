
Hello Community,

This is a new Bacularis 6.2.1 minor release. It mainly contains bug fixes
along with a few small improvements.

In this release, we have prepared the second part of the changes required
to support upcoming PHP-FPM package modifications in DEB-based distributions.
More specifically, we added detection of the ``ProtectSystem`` directive in
the Install Wizard. When this directive is found, a warning is displayed
together with instructions for users who want to automatically install
Bacula during the Bacularis installation process using the Install Wizard.

Regarding bug fixes, we restored support for running Bacularis behind
a reverse proxy, which was unintentionally broken in version 6.2.0. We also
fixed Bacula installation through the Install Wizard on DEB-based systems.
In addition, we resolved issues related to processing command output on
the latest operating systems that use the new OSC 3008 terminal control
sequence.

Besides the changes above, we updated the SELinux policy module and
introduced several internal improvements that simplify Bacularis development
and maintenance.

We wish you successful installations and upgrades.

The Bacularis Team

### Main changes

**Bacularis Web**

 * Update actions/checkout from v4 to v6
 * Fix web interface access if Bacularis works behind reverse proxy
 * Fix install Bacula via Bacularis on DEB-based systems

**Bacularis Common**

 * Add detecting ProtectSystem directive
 * Add Systemd and OpenRC modules
 * Update SELinux policy module
 * Update actions/checkout from v4 to v6
 * Make exec command method as static
 * Ensure always new authentication for executing commands with sudo
 * Fix web interface access if Bacularis works behind reverse proxy
 * Fix command outputs in systems with new OSC 3008

**Bacularis API**

 * Add warning to install Bacula function if ProtectSystem systemd directive is enabled
 * Update actions/checkout from v4 to v6
 * Update OpenAPI doc version
 * Fix web interface access if Bacularis works behind reverse proxy

**Bacularis APP**

 * Update actions/checkout from v4 to v6

