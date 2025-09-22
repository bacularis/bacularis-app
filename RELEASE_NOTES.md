
We are pleased to announce the release of **Bacularis 5.7.0**. This version introduces
a new **Web Access** feature that simplifies different backup automations in Bacula
environments such as event-driven backup, run automated jobs with custom settings
and others. Access can be restricted by time, usage, or source IP address, offering
flexible and secure control.

This release further includes several improvements and fixes to existing features.
Notably, the job list loading speed has been significantly improved, thanks to
a contribution from Community member Elias Pereira.

At the end we added an option to define maximum number of jobs displayed in
the job table. This was a feature request reported by the Community.

We wish you smooth installations and upgrades!

## Main changes

**Bacularis Web**

 - Add web access
 - Add web access Bacula resource module
 - Add web access configuration module
 - Add display option to set max number of latest jobs in table on dashboard
 - Add long unit parameter to format time duration helper
 - Move some job options to jobinfo module
 - Add Elias to AUTHORS
 - Fix page not found error after clicking the fileset link in job log
 - Fix access to job details page for regular users

**Bacularis API**

 - Jobs list: replace ROW_NUMBER() first-volume subquery with MIN(JobMediaId) join (big speedup on MariaDB; also OK on PostgreSQL)
 - Add Elias to AUTHORS

**Bacularis Common**

 - Improve datepicker style
 - Add Elias to AUTHORS

**Contributors**

 - @empereira

