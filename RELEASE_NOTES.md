
Bacularis 4.2.0 introduces support for a plugin interface on the API side.
So, since now users are able to create own API-side plugins in the same way
as they can already create Web-side plugins. For a good start we provided
a Bacula configuration plugin interface and we prepared first API plugin for
attaching pre/post config actions.

On the Bacula deployment side, we extended support for Bacula packages from
bacula.org. It significantly simplifies configuring OS profiles to use
bacula.org packages. It causes that using system Bacula packages, packages
from bacula.org or packages provided in self-hosted package repository can
easily be configured in the OS profile.

This version is also bug fix release. We fixed couple of bugs found in
the deployment function.

## Main changes

**Bacularis Web**
 - Extended support for deploying with Bacula packages from bacula.org
 - Unify using Web plugins
 - Improve displaying dashboard totals on medium screens
 - Move table toolbar function to Common

**Bacularis API**
 - Add API plugin support
 - Add Bacula configuration plugin

**Bacularis Common**
 - Add interface for Bacula config plugins
 - Update SELinux policy module
 - Improve plugin support organization
 - Fix SD config permission setting
 - Move table toolbar function to Common
 - Move Bacula config module to API

