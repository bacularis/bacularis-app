
We're happy to announce the release of Bacularis ``6.1.0``. This update brings
quite a long list of changes, definitely more than we originally planned when
we started preparing this release.

### New global resource search

One of the highlights of this release is the new global Bacula resource search.
It's modern, user-friendly, and fully configurable.

Our goal was to provide a simple way to search across clients, storage, jobs,
and many other resources - all in one place. We hope this feature will be useful
both in large environments with many resources and in smaller setups as well.

You can learn more here and see it in action:

https://bacularis.app/doc/misc/global-search-box.html

### Dashboard improvements

We've introduced several enhancements to the dashboard, including a new time
range selector for charts. Instead of relying only on fixed ranges, you can
now dynamically adjust the time scope whenever needed.

The static range option is still available and remains the default setting.

### Upcoming OS support

We've added support for upcoming distributions (not yet officially released
at the time of writing):

 * Ubuntu 26.04 Resolute Raccoon (LTS)
 * Fedora 44

This support also includes new OS profiles for deploying Bacula and Bacularis
instances on remote hosts. We've prepared binary package repositories for
these systems and updated the SELinux policy module accordingly.

### API updates

On the API side, we've added several new endpoints and extended existing ones
with additional parameters to provide more flexibility.

### UI and navigation tweaks

We've also made a number of smaller improvements to the dashboard and breadcrumb
navigation. These include visual refinements and text corrections to improve
overall usability.

### Bug fixes

This release includes several bug fixes. We'd like to take this opportunity to
thank our community members for their engagement and support. It really means
a lot.

### Technical note

When upgrading to version ``6.1.0``, we recommend updating both:

 * the web interface host
 * and the API host

This is required for the new search feature to work correctly.

If your web interface and API are running within the same local Bacularis
instance, or if you don't plan to use the search feature, this does not apply
to you.

We wish you smooth installations and upgrades, and a great time using Bacularis!

 - The Bacularis Team


### Main changes

**Bacularis Web**

 * Add global search box
 * Add OS profiles for Ubuntu 26.04 and Fedora 44
 * Add to dashboard time range select element
 * Add to pie charts option to show percent values
 * Add search box configuration options in application settings
 * Add support for search result on director view page
 * Improve texts on dashboard page
 * Small visual improvements on dashboard and in breadcrumbs nav
 * Open edit config resource for given parameter
 * Update translation files
 * Replace deprecated rule in PHP-CS-Fixer configuration
 * Update required phpstan version
 * Prepare selected texts to re-translation
 * Improve texts and add sections to display options in application settings
 * Increase visibility of API host selection element
 * Fix OIDC audience claim checking
 * Fix ordered list box control
 * Fix validation in new virtual full job wizard
 * Fix PHP error on searching if old API version used
 * Fix typo error in breadcrumbs nav
 * Fix typo in breadcrumbs menu label

**Bacularis API**

 * Add new client resource names endpoint
 * Add new storage resource names endpoint
 * Add new pool resource names endpoint
 * Add search parameter to job resource names endpoint
 * Add search parameter to get configuration endpoint
 * Add search parameter to volume list endpoint
 * Add offset parameter to job resource names endpoint
 * Add offset, limit and search parameters to fileset resource names endpoint
 * Add ILIKE pattern operator support
 * Create new schedule resource names endpoint
 * Update OpenAPI documentation
 * Register new endpoints in API
 * In client resource names endpoint make search results more accurate
 * Replace deprecated rule in PHP-CS-Fixer configuration
 * Update required phpstan version
 * Fix device page icon

**Bacularis Common**

 * Add styles for search box
 * Add helper for simple list filtering
 * Add new margin for top page elements
 * Update SELinux policy module for Fedora 44
 * Update required phpstan version
 * Replace deprecated rule in PHP-CS-Fixer configuration
 * Fix update for file mtime clumping
 * Fix comment in MySQL and MariaDB backup plugins
 * Fix comment in PostgreSQL backup plugin

