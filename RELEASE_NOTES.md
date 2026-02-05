
We are pleased to announce the release of **Bacularis 5.11.0**. This version
introduces a number of improvements to the web interface aimed at making it
even more convenient to use, simplifying selected actions, and reducing the
number of steps required to perform them.

### Dashboard Enhancements

One of the most notable additions is the introduction of new tabs on the
 Dashboard page. These provide information about:

 * the most recently executed Bacula jobs,
 * jobs scheduled for today,
 * jobs scheduled for the next five days.

With these improvements, users can immediately see upcoming Bacula activity
right after logging into the web interface.

### Bulk Actions for Volumes

This release introduces a set of new bulk actions for the Volumes list. Users
can now perform operations on single or multiple volumes at once. Supported
bulk actions include:

 * setting volume status,
 * changing the volume pool,
 * updating data retention,
 * configuring recycle, inchanger, and enabled flags,
 * and more.

These enhancements significantly streamline volume management tasks.

### Bulk Actions for Other Resource Lists

New bulk actions have also been added to the following lists:

 * Jobs
 * Clients
 * Storage
 * Pools

All of them support performing actions on both individual items
and selected groups of items.

### Data Views for Jobs

Another long-awaited feature is the introduction of data views for the Jobs list.
This allows Bacula jobs to be organized into logical groups for easier management.
The Jobs list was one of the few remaining areas without support for data views,
and we are happy to finally bring this functionality there.

### API Updates

On the API side, we have added several new actions, particularly for the Pool and
Client endpoints. As usual, the API documentation has been updated accordingly.

### Bug Fixes

We have also implemented several fixes in the new tape storage wizard.

### Important Notice

If your Bacularis instance includes users with limited Bacula resource permissions
(using Console ACLs), and you would like them to see their scheduled Bacula jobs on
the Dashboard page, you need to add an additional CommandAcl directive to their
ConsoleACL configuration to allow the use of the status command, for example:

 CommandACL = status

If your Bacularis users do not use Console ACLs, you do not have non-administrator
users, or you do not wish to expose job schedules to users, no additional action is
 required.

For more details, please refer to the related Git commit:
https://github.com/bacularis/bacularis-web/commit/a91e8d95795aef74b2c4db24d412fc68215dc687

We wish everyone smooth installations and upgrades.

Enjoy using Bacularis!

— The Bacularis Team

### Main changes

**Bacularis Web**

 * Add to dashboard tabs with recent jobs, scheduled for today and schedules for next 5 days
 * Add configurable data views to job list
 * Add delete job resource bulk action in job list
 * Add delete storage resource bulk action in storage list
 * Add delete client resource bulk action in client list
 * Add delete pool resource bulk action in pool list
 * Add set volume status bulk action
 * Add set volume pool bulk action
 * Add set volume retention bulk action
 * Add set volume use duration bulk action
 * Add enable/disable volume recycle flag bulk action
 * Add enable/disable volume enabled flag bulk action
 * Add enable/disable volume inchanger flag bulk action
 * Add to storage view page message about tape storage wizard
 * Add missing text to translation files
 * Add new delete actions logging to audit log
 * Improve field view in status schedule
 * Extend CommandAcls used by web interface for status command
 * Set cursor pointer in selectable tables
 * Use server time in schedule results on dashboard
 * Remove requiretty flag from sudo settings
 * Use from common part volstatuses possible to set by user
 * Fix hide bulk actions element
 * Fix PHP error in new tape storage wizard
 * Fix validation in new tape storage wizard

**Bacularis Common**

 * Add new pool error
 * Improve dashboard table styles
 * Move to common part volstatuses possible to set by user

**Bacularis API**

 * Add delete client endpoint
 * Add delete pool endpoint
 * Add new delete pool endpoint to OpenAPI specification
 * Add new delete client endpoint to OpenAPI specification
 * Add current time epoch to jobtotals result
 * Make client checking more accurate + refactor
 * Make pool checking more accurate + refactor
 * Update delete client endpoint description and error codes in OpenAPI specification
 * Update delete pool endpoint description and error codes in OpenAPI specification
 * Update OpenAPI specification

