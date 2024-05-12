
This is a major new function release. We added the job files difference
function that enables comparing files in jobs and finding file
differences between selected jobids or jobids range.
Besides that we added a new features in configuration parts of Bacula.
They are new columns to display descriptions and to dependency check
in which resource every single resource is used, for example: Pool X is
in use by Job Y and JobDefs Z. At the end we added a self-test to do
a health state check of each API instance used by the web interface.

Bacularis Web
 - Add health self-test check
 - Add function to config part for checking where resource is used
 - Add description column to director, storage, client and console resource configuration
 - Add job files difference function

Bacularis API
 - Add endpoint to run health self-test
 - Add job file difference endpoint

Bacularis Common
 - Add job file difference method validator

