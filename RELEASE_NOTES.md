
This is fully new function release that is targetted to ease work with Bacula configuration specially in medium and large Bacula environments, where is a lot of Bacula resources to manage.

First, we prepared the configs and patterns function. It can be significantly helpful in repeatable tasks with Bacula configuration. This feature enables bulk adding configuration to multiple or single resources at once. Config function is designed for adding configuration to Bacula resources (Client, Pool, Device...) while patterns are for adding configuration with many resources to local and remote Bacula components (Director, File Daemon, Storage Daemon...). More information about these two functions you can find in the Bacularis documentation.

Second big change is a new version 3 of the Bacularis API. Users that use own scripts or programs working with Bacularis API version 2 can still use it because it is still fully supported in Bacularis 3.2.0. These users can consider switching to API version 3 in the future. All details about what changed in API you can find at the end of this text and also in the release announcement on the Bacularis website.

To maintain continuity of work in multiple Bacularis instance environments advised upgrading method to version 3.2.0 is to upgrade all Bacularis API hosts first and Bacularis Web at the end. It is because of fact that Bacularis API 3.2.0 works well with Bacularis Web lower than 3.2.0, while Bacularis Web 3.2.0 does not work with Bacularis API lower than 3.2.0.

## Main changes

**Bacularis Web**
 - Implement configs and patterns function
 - New bulk actions for applying configs and patterns
 - Switch web interface to use new API version 3
 - Improve writing values in multiple text box control
 - Add enabled property to table toolbar
 - Remove old data dependencies module

**Bacularis API**
 - New API version 3
 - Add new API endpoint methods to configure Bacula

**Bacularis Common**
 - Add error codes for new API v3 endpoints
 - Add data dependency module to app configuration
 - Move from the Web layer the data dependencies module

**API v3 changes**
 - new POST method to create resource in /api/v3/config/{component_type}/{resource_type}/{resource_name}
 - new DELETE method to delete resource in /api/v3/config/{component_type}/{resource_type}/{resource_name}
 - add rename function to PUT method in /api/v3/config/{component_type}/{resource_type}/{resource_name}
 - add automatic changing resouce to new name in directives in dependent resources. Ex: if resource A is used in B, then renaming A causes that A entry in B resource will be updated to new value.
 - add simulate mode for saving Bacula configuration

