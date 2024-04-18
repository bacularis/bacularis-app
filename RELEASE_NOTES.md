
This is minor new feature and bug fix release. We introduced a couple of
improvements for using backup file list function like finding the largest
or the newest files in backup. Besides that we added a new deployment
OS profiles for Ubuntu 24.04 Noble and Fedora 40.

Bacularis Web
 - Add control to display top 10 largest/smallest/recent/oldest backup files
 - Add sorting capability by file, size and mtime columns in backup file list
 - Add deployment OS profile for Fedora 40
 - Add deployment OS profile for Ubuntu 24.04 Noble
 - Change default job age for job size and files graph
 - Fix validation for data view name
 - Fix network test support for Bacula 9.6
 - Fix displaying text in running jobs bar on Firefox

Bacularis API
 - Add order by and order type parameters to /jobs/{jobid}/files endpoint

Bacularis Common
 - Add commented software compression lines to web server configs
 - Add custom sorting method by given property

