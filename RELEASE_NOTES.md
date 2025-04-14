
This is new function and bug fix release. We added a new function to save Bacula
component configuration to pattern and configs. This enables new capabilities
such as:

 * creating configs and pattern from an existing Bacula component configuration,
 * coping the same configuration parts to multiple hosts
 * creating backup of the current Bacula component configuration
 * saving a "snapshot" of the Bacula configuration so that can be restored at any time

In Bacularis 5.1.0 we also added new functions to the Bacula messages log window.
They are filters (info/warning/error) and search field to quick search in all message
logs.

On the bug fixes side, we made enabling the TOTP 2FA feature working back and we fixed
bugs that we found during various manual tests.

## Main changes

**Bacularis Web**

 * Add save Bacula component configuration to pattern
 * Add info/warning/error filters to messages log window
 * Add search field to messages log window
 * Add OS profiles for Ubuntu 25.04 Plucky and Fedora 42
 * Add clear Bacularis install command fields in OS profile window
 * Add in config flag to directive list
 * Split OS profile settings into tabs
 * Define path for virtual full job wizard
 * Minor internal improvements in runscript, fileset and schedule resources
 * Expand allowed characters in pattern name
 * Fix enable TOTP 2FA function for new users
 * Fix config name and pattern name validation
 * Fix visibility of bulk apply pattern window on deployment page
 * Fix show/hide multiple text box control
 * Fix support for pipe sign in pattern config directives
 * Fix short string renderer error if array used
 * Fix in config flag
 * Remove old unused OS profiles

**Bacularis Common**

 * Improve Bacula resource permission settings table view
 * Remove old user manager interface

