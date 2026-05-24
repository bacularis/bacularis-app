
Hello Community,

We are very pleased to announce the release of Bacularis ``6.2.0``.

This release represents a significant amount of work over the past months,
including development, testing, and preparation. Without a doubt, this is
one of the largest releases in the history of Bacularis.

Let's take a look at what we have prepared.

### AWS EC2 plugin

The main feature of version ``6.2.0`` is the new AWS EC2 virtual machine
backup plugin.

The plugin supports backups of both complete EC2 instances and selected
EBS volumes, including their data and metadata. This makes it possible
to restore environments that closely reproduce the original EC2 instances.
During restore operations, selected instance properties can also be overridden,
such as instance type, security groups, or Availability Zone settings.

The AWS EC2 plugin supports both full and incremental block-level backups,
helping reduce transferred data and improve backup performance.

We are excited to deliver this plugin to the community and hope it will
help protect AWS EC2 workloads more efficiently.

Complete technical documentation for the plugin is available in the new
dedicated documentation section:

https://bacularis.app/doc/plugins/cloud/amazon-aws-ec2-backup-plugin.html

### New tools for plugin development

Along with the AWS EC2 plugin, we prepared a number of generic tools that
were required for implementing EC2 backup functionality and that will also
be useful for future plugins.

These include cloud communication tools, data stream processing tools,
and several other components. Thanks to these additions, developing future
plugins should become easier and faster.

### PRADO upgrade

Version ``6.2.0`` is not only about the AWS EC2 plugin.

As previously announced, we prepared the first phase of changes required
for the planned upgrade of the PRADO PHP framework that powers Bacularis.

In this release, the framework itself remains unchanged, but we are now
one step closer to the upgrade.

### Plugin improvements

Another area of improvement in this release is the Bacularis plugin system.

This includes improved plugin event logging, enhancements to plugin parameter
handling, and several other changes. These improvements may be particularly
useful for users developing their own Bacularis plugins.

### Bug fixes

Finally, we included several bug fixes.

Although the number of fixes is relatively small, there is one that we would
particularly like to mention. We fixed an issue with missing port numbers in
Bacularis URLs when running behind Nginx installations.

The issue was caused by recent changes in Nginx configurations used in modern
distributions. This problem was reported by a member of our community **sgw**,
and the Bacularis fix adjusts the interface behavior accordingly.

We wish you successful installations and upgrades.

As always, we encourage you to share feedback, report issues, and discuss your
experiences with the Bacularis community.

The Bacularis Team


### Main changes

**Bacularis Web**

 * Add Cloud page
 * Add tab to configure Amazon accounts
 * Add tab to configure EC2 instance backup
 * Add tab to configure EBS volumes backup
 * Adapt config directives to new PRADO version
 * Adapt combobox reload control to new PRADO version
 * Update texts, add EC2 plugin integration texts
 * Create new module for job actions - refactor
 * Set cloud page menu item
 * Extend name pattern
 * Fix missing port in HTTP\_HOST web server variable
 * Fix listing jobs in run job window
 * Fix identifier in identity provider settings

**Bacularis Common**

 * Add Amazon AWS EC2 backup plugin
 * Add Amazon AWS cloud integration
 * Add Bacularis HTTP worker pool
 * Add worker pool modules
 * Add NINI config file module
 * Add BitSet module
 * Add tools to work with data streams
 * Add new Bacularis data format modules
 * Add placeholder support in plugin parameters form
 * Add error codes support to HTTP client
 * Add simple name validator
 * Improve logging by plugins
 * Improve default parameters passed to plugins
 * Improve plugin log messages readability
 * Improve INI-style config file module
 * Extend HTTP client modules
 * Update application settings
 * Remove unused exception
 * Fix missing port in HTTP\_HOST web server variable

**Bacularis API**

 * Add describe EC2 instances API endpoint
 * Add describe EBS volumes API endpoint
 * Add AWS account API endpoints
 * Add AWS CLI support
 * Add workers for EC2 backup, EC2 restore and EC2 local file restore
 * Add Bacularis AWS account module
 * Add AWS command module
 * Add AWS CLI config modules
 * Update API service configuration
 * Fix missing port in HTTP\_HOST web server variable

