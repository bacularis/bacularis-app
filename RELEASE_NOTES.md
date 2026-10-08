
Hello Community,

We are happy to bring you a new major release of Bacularis 7.0.0. Since
the release of version 6.0.0, many new features and improvements have
been added to the interface. We feel that now is the right time to bring
them together under a new major version and mark another important milestone
in the development of Bacularis.

Originally, we planned to release this version as 6.6.0. However, looking
at the scope of changes introduced since 6.0.0 and the pace of development
of the project, we decided that this was a good moment for the next major
release.

One of the main additions in 7.0.0 is a new checker designed to detect
signals that may indicate ransomware activity. It works as part of the Restore
Verification system. Thanks to this integration, the analysis is not based
solely on metadata or statistics. The checker examines actual data restored
from backup during a restore test.

We spent a significant amount of time testing the checker and calibrating
its measurements. It uses a multi-signal approach. Instead of relying on
a single type of analysis, it combines several different signals that may
indicate anomalies in the data. Detected anomalies are assigned weighted
scores, and the combined score determines the final verification result.

You can find all the details about this feature in the checker documentation:

https://bacularis.app/doc/restore-verification/checker-plugins/available-checkers/ransomware-detection.html

While developing the ransomware checker, we also introduced two mechanisms
that may be useful for developers creating their own Restore Verification
checkers in Bacularis. The first provides support for checker configurations,
while the second makes it possible to maintain a history of previous checker
results.

Both mechanisms are described in detail in the documentation, in the chapter
about creating checkers. They are generic mechanisms and can also be used by
other checkers. In the ransomware checker, they made it possible to compare
historical results with current changes in backup data and determine whether
observed deviations represent an anomaly or typical behavior for a given
dataset.

In addition to the new features, Bacularis 7.0.0 also includes a number
of fixes.

If we look at 7.0.0 as the next major release after 6.0.0, the list of new
capabilities has become quite extensive. Some of the most important changes
introduced since 6.0.0 include:

- Restore Verification
- Ransomware detection
- Simple restore
- AWS EC2 backup plugin
- Global search
- New look and feel

Bacularis 7.0.0 packages are available in all package repositories provided
by Bacularis. Users of other installation methods, including Docker container
images and PHP Composer, can also update their instances to the new version.

We wish you smooth and successful upgrades. Thank you for every contribution,
every piece of feedback, and every form of support for the project.
We truly appreciate it.

We hope Bacularis 7.0.0 serves you well.

The Bacularis Team

### Main changes

**Bacularis Web**

* Add history support to restore verification checkers
* Add config support to restore verification checkers
* Add new web access action type
* Add renderer to self test results
* Improve displaying jobid in restore job table
* Improve control chars checking
* Display accurate message if restore finished with error before verification results
* Fix job log box width if log contains very long output lines
* Fix saving verification history structure
* Fix align text and icon in table row details in responsive view
* Fix checker name in verification rules
* Fix displaying table buttons in responsive mode
* Fix top bar element width

**Bacularis Common**

* Add ransomware detection plugin
* Add historical data support to verification checkers
* Add config support to verification checkers
* Add new sorting and validation tool
* Add file type module
* Add data entropy module
* Add finalize, history and configuration to verification checkers
* Add distiction between text and binary file types
* Add generic mime types to file type module
* New modules for restore verification result and status
* Update SELinux policy module
* Use common conf and sql types in file type list
* Improve regular plugin command expression
* Save current checker state if it is not empty
* In plugin list page list only plugins that support configuration
* Truncate large logs
* Extend message in job log if verifiaction could not be finalized
* Extend generic error codes for not ready state
* Get plugin settings by name
* Fix restore verification for windows paths
* Fix switch application to normal mode
* Fix displaying table buttons in responsive mode
* Fix checkbox state in plugin settings if default value is true

**Bacularis API**

* Add restore verify result endpoint
* Improve restore verification result messages
* Improve control chars checking in bconsole module
* Extend validation in restore verify plan endpoint
* Fix displaying table buttons in responsive mode

