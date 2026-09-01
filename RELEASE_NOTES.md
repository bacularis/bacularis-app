
Hello Community,

We are happy to announce the release of Bacularis 6.5.0. The most important
new feature in this release is Restore Verification, a new feature for
automated restore testing. This version also brings support for Bacula 17.0,
an update to the French translation, new API capabilities, and other improvements.

### Restore Verification

Restore testing is an important part of data protection. However, performing such
tests manually on a regular basis can be time-consuming, tedious, and add extra
workload for administrators. The new Restore Verification feature makes it possible
to automate this process and perform restore tests according to defined criteria.

Restore Verification can use both verification methods provided by Bacularis and
the native Bacula Verify Job. It provides a flexible framework for creating
different automated restore testing scenarios.

You can learn more about this feature in the dedicated Restore Verification section
of the documentation:

https://bacularis.app/doc/restore-verification/general.html

You will also find a video guide there showing Restore Verification in practice.

### French translation update

Thanks to the work and involvement of our community member Philippe Ramage,
the French translation of Bacularis has been updated in version 6.5.0. The update
covers both the web interface and the API administration panel.

### Bacula 17.0 support

In version 6.5.0, we have prepared support for the upcoming Bacula 17.0 release.
All required changes have been implemented and tested with Bacula 17.0.0 beta,
making Bacularis ready for the new major Bacula release.

### New columns in the job table

We have added two new schedule-related columns to the job table: **Next run**
and **Starts in**. They show the date and time of the next scheduled job run and
the time remaining until it starts. This makes it easier to quickly check when
a job is going to be started by the scheduler.

### New API endpoints

On the API side, we have added several new endpoints and extended the capabilities
of several existing ones. The main changes include:

* New endpoints for Restore Verification
* New search parameters for existing endpoints
* New grouping parameters for existing endpoints
* New time-range parameters for job endpoints
* New ``comment`` parameter for the run job endpoint

### Bug fixes

This release also includes bug fixes, including fixes for the Simple Restore feature,
as well as a number of smaller fixes in other areas of Bacularis.

### SELinux policy module update

We have also updated the SELinux policy module to accommodate changes introduced
in the latest versions of Bacularis.

Thank you for supporting the project in any way. It is very important to us.

We wish you smooth Bacularis installations and upgrades.

See you around.

The Bacularis Team

### Main changes

**Bacularis Web**

* Add restore tests page
* Add restore policies page
* Add restore destinations page
* Add verification rules page
* Add restore verification wizard
* Add restore verification support in web access
* Add restore verification modules
* Add support for Bacula 17.0
* Add next run and starts in columns to job list table
* Add file selection to job list files portlet
* Register new restore verification modules and pages
* Rework manage Bacula configuration and web access
* Mark restore test result errors by colors
* Update French translations
* Adapt strings to new French translations update
* Adapt web interface to French translations - second part
* Add Philippe to AUTHORS
* Fix displaying texts with apostrophes on storage view page
* Change audit log category for restore error message
* Allow using debug log in web access if debug is enabled
* Fix next run and starts in values for old Bacula versions
* Update strings in English translation file
* Update extended breadcrumb nav on job list page
* Fix last run column in restore test table

**Bacularis Common**

* Add new restore command interface
* Add restore verification checker plugins
* Add restore verification modules
* Add comment parameter to console restore action
* Add options parameter to HTTP client
* Update SELinux policy module
* Extend misc module for job type and file mode methods
* Extend list filtering to support array list items
* Fix command identifier in simple restore
* Fix selecting submenu item in simple restore

**Bacularis API**

* Add restore verify plan endpoint
* Add endpoint to get full directory tree for elementary backup jobids
* Add sort parameters to jobs endpoint
* Add comment parameter to restore endpoint
* Add new search parameters to config endpoints
* Add group by and group limit parameters to status schedule endpoint
* Add comment parameter to job run endpoint
* Add job name parameter to BVFS get jobids endpoint
* Add starttime\_from and starttime\_to job endpoint parameters
* Add start time range parameters to documentation
* Update French translations
* Add Philippe to AUTHORS
* Make show command parser more accurate
* Use new BLStat methods in BVFS module
* Update OpenAPI documentation
* Update OpenAPI documentation for new config search parameters
* Update startime from/to param description
* Extend support for multi-condition SQL queries
* Improve BLStat module and move its part to Commmon
* Improve restore if selected path does not exist
* Simplify validation in list job files endpoint
* Fix loader in API dashboard if text contains apostrophes

