
This is new feature and bug fix release. We introduced two significant changes:
the API host groups and easier to configure Bacula resource access. We hope
that these two new functions will much improve the user and resource management
in Bacularis.

Bacularis Web
 - New API host groups feature
 - New much easier way of setting access to selected Bacula resources per API host,
   per API host group and per user

Bacularis API
 - Fix providing password parameter to basic user edit endpoint
 - Fix saving Exclude resource in the same form as it comes from API

Bacularis Common
 - Add wide action column styles
 - Fix copying job log to clipboard if HTTP protocol is used
 - Fix PHP warning if TLS LDAP connection cannot be set
