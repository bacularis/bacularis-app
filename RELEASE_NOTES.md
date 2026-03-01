
We are pleased to announce the release of **Bacularis 6.0.0**. This is a new
major release. We know that many of you have been waiting for this version
in order to upgrade from your current major version ``5.0.0``. Compared to
version ``5.0.0``, this release represents nearly a year of development and
comes with a long list of new features and improvements. We are very happy
to finally deliver this new version to you.

Binary packages for the major version ``6.0.0`` are now available to all
users in all official Bacularis package repositories. Let’s take a look
 at what’s new in version ``6.0.0``.

### Role mapping for Bacularis

We have introduced Bacularis role mapping. This feature enables centralized
management of Bacularis roles from an external IAM system.

Currently, two operating modes are supported:

 * Local role management within Bacularis
 * Remote role management for logins using an Identity Provider (IdP)

Remote management is possible through mapping IAM roles to Bacularis roles.
This feature request was submitted by a member of the Bacularis community,
**jsiit**.

You can read more about this feature in the Bacularis documentation:

https://bacularis.app/doc/users/role-mapping.html

### Backup verification from the job list

Another new feature is the ability to verify backups directly from the Bacula
job list. You can select the jobs you want to verify and run verification for
them using your dedicated Verify-type job.

### Extended "breadcrumbs" navigation

We have introduced a new extended "breadcrumbs"-style navigation menu. This is
not a typical breadcrumbs component – in addition to navigating back through
the page hierarchy, it also allows you to execute any function available from
each page within the current hierarchy.

We hope this new navigation component will make moving around Bacularis even
more intuitive and efficient.

### Enabling and disabling Bacula components

Another new feature is the ability to temporarily or permanently enable and
disable Bacula clients directly from the client list.

 * **Temporary** enable/disable operations are executed using the Bconsole
   ``enable`` and ``disable`` commands.
 * **Permanent** disable is performed using the configuration directive
    ``Enabled = yes/no``.

A very similar feature has also been introduced in this version for
temporarily enabling and disabling storage resources directly from
 the storage list.

### Improvements and API updates

We have also made improvements to page headers to make them clearer and
 more readable.

On the API layer, we added several new endpoints, particularly for the newly
introduced enable/disable functionality for Bacula components. As usual,
the API documentation has also been updated accordingly.

### Bug fixes

This release includes both important fixes – for example, related to
authorization – as well as smaller fixes, mainly focused on visual and UI
improvements.

Any feedback is highly appreciated. Please let us know your impressions,
issues, and thoughts.

We wish you smooth installations and upgrades.

Enjoy using Bacularis.

 – The Bacularis Team

### Main changes

**Bacularis Web**

 * Add role mapping
 * Add verify backup jobs bulk action in job history list
 * Add extended breadcrumbs navigation control
 * Add enable clients bulk action in client list
 * Add disable clients bulk action in client list
 * Add enabled flag column to client list
 * Add enable and disable storage bulk action in storage list
 * Add page header control
 * Add role mapping settings in identity provider configuration
 * Add log run and rerun job action to audit log
 * Add loader to disable client window
 * Improve authorization error page
 * Use role mapping on security page
 * Use extended breadcrumbs nav and page headers in pages
 * Move verify differences job status to warning type
 * Set new style for resource control
 * Set identifiers in label volume and update slot components
 * Fix logout action on authorization error page
 * Fix displaying authorization error if user has no role assigned
 * Fix deselect client list items on disable client error
 * Fix bulk actions modal portlet
 * Fix load role mapping list for new identity provider settings
 * Fix Polish translation text
 * Fix indentation on roles page
 * Fix code style

**Bacularis API**

 * Allow enable and disable commands to run in bconsole
 * Add disable client endpoint
 * Add enable client endpoint
 * Add enable/disable storage to OpenAPI documentation
 * Add disable storage endpoint
 * Add enable storage endpoint
 * Update OpenAPI documentation

**Bacularis Common**

 * Add breadcrumbs nav and page header styles
 * Extend call action function

