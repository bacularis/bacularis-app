
Hello Community,

We are pleased to announce the release of Bacularis 6.3.0.

This release brings the most significant visual update to Bacularis in quite
some time. We are introducing a new blue theme that becomes the default
appearance for both the web interface and the API panel. At the same time,
we have refreshed many interface elements to make the user experience
more modern, consistent, and comfortable for everyday use. Bacularis with
the new look and feel you can see on the [Demo Page](https://demo.bacularis.app)

### Note

The visual changes have been designed in a way that does not require any
additional steps during the upgrade to version 6.3.0. However, if you notice
any visual inconsistencies after upgrading, we recommend clearing your browser
cache and refreshing the page.

We know that some users have become accustomed to the classic green theme.
For this reason, we have prepared it as an add-on available in the
[Add-ons Catalog](https://addons.bacularis.app/add-on/21/bacularis-green/).
Due to changes introduced in the templates, it is not an exact copy of the
original theme, but it closely resembles its appearance and behavior.

In addition to the new look and feel, we have introduced a small enhancement
to the Volumes page. Thanks to a feature request submitted by a member of our
community, we were able to add new columns to the volume tables. These columns
make it easier to determine when a volume becomes eligible for recycling and
reuse.

### Note for developers using the Bacularis API

We have improved the consistency of the data returned by the volume object
property named ``whenexpire``. In certain situations, the returned value could
differ in format from other date-related fields. If your scripts rely on this
property, please review the updated documentation.

We have also reorganized the Composer installation method. This change simplifies
internal package management and lays the groundwork for future improvements to
this installation path. For most users, no additional actions are required beyond
the standard upgrade procedure.

### Important

Users who installed Bacularis via Composer should pay special attention to ensuring
that they have downloaded the latest version of ``composer.json`` when upgrading
to 6.3.0, following the upgrade procedure described
[here](https://bacularis.app/doc/brief/updating.html#updating-composer-based-installations).

As previously announced, we have upgraded selected JavaScript libraries used by both
the web interface and the API panel to their latest available versions. These libraries
are primarily related to table components and the display of data in tabular form across
the interface.

Finally, we would like to wish everyone a smooth installation and upgrade experience.

As always, we encourage you to share feedback, report bugs, submit feature requests,
and support the project in any way you can. Your contributions help Bacularis continue
to improve and evolve.

The Bacularis Team

### Main changes

**Bacularis Web**

 * New look and feel
 * Add new web interface font
 * Add new volume expiry and first/last written fields to volume tables
 * Add time duration renderer
 * Fix network test view
 * Disable Japanese language selection
 * Fix column widths in scheduled job tables
 * Fix title in manage LDAP and Basic user windows

**Bacularis Common**

 * New look and feel
 * Add new web interface font
 * Add set up project to update.sh script
 * Add script to initialize project files
 * Add fallback for update if used old composer file
 * Fix path in update script
 * Fix elements with sticky position
 * Move patches to bacularis-app module

**Bacularis API**

 * New look and feel
 * Add new volume properties to API endpoints
 * Add new web interface font
 * Update OpenAPI documentation

**Bacularis APP**

 * Add new font to dependencies
 * Add patches directory from bacularis-common
 * Simplify create project with composer
 * Use patches and add cweagans/composer-patches to allowed plugins
 * Fix pre-update-cmd composer action
 * Fix update script

