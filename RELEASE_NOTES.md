
This is a new feature and bug fix release. In this version we are providing
the data views function that enables to define own views with own filters
for job, client, storage, pool and volume pages. This function significantly
helps to organize the web interface and tailor it to your needs.

Second change in the new release is making consistent default data sorting
for data selection lists. Now Bacularis uses natural case-insensitive
sorting order.

From the fixes side we fixed current bugs reported by the Community.
At the end we added some general minor improvements.

Changes:

Bacularis Web:
 - Add new data tab views control
 - Add data tab views function to job history table
 - Add data tab views function to client list table
 - Add data tab views function to volume list table
 - Add data tab views function to pool list table
 - Add data tab views function to storage list table
 - Add boolean type to data view filters
 - Use natural case-insensitive sorting in all web interface
 - Display error volume status in red on volume view page
 - Remove OS profiles for old not supported already systems
 - Fix deleting exclude fileset section after enabling all directives mode
 - Fix default b(sd|fd|dir|bcons)json paths in OS profile for Ubuntu 20.04 Focal
 - Fix auto-selecting result tab when job estimation is starting
 - Fix displaying job estimation results when dark theme is used
 - Use boolean type in client list data views
 - Use natural sorting for filter values on graphs page
 - Use natural sorting for resource lists in run job window
 - Sort resource names in data view window
 - Update translations
 - Update actions/checkout and actions/cache to version 4

Bacularis API:
 - Fix PHP warning on PHP 7.4 about use statement
 - Fix displaying items in list client files/dirs
 - Fix limit parameter in clients endpoint and add sorting parameters
 - Update actions/cache to version 4
 - Update actions/checkout to version 4

Bacularis Common:
 - Add changes for data views function
 - Add order type validator
 - Update actions/checkout and actions/cache to version 4

