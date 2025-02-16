
This is the bug fix and update release. Even though in this version we didn't add new functions,
this is significant release because we updated to latest version the major libraries which
Bacularis uses. Specially worth to mention is the table library that required adding many changes
to adapt Bacularis for the newest version.

With this release we also changed source of taking the front-end dependencies from the Bower package
registry to the NPM package registry. It is because from a long time the Bower has been announced as
deprecated and NPM registry better fits the Bacularis requirements. The only dependencies that still
are taken from Bower are the PRADO framework dependencies: jQuery and jQuery-UI, that source we
are not able to change.

On the bug fix side, we fixed couple of problems. At the end we improved the general web interface
view and we changed the default fonts. It can be specially noticeable for the Firefox web browser users.

## Main changes

**Bacularis Web**

 * Update table modules to latest versions
 * Adapt tables to latest library version
 * Switch from Bower to NPM package registry
 * Fix space and speed gauges precision on storage status page
 * Fix default sorting in job history table on job details page
 * Adapt paths to new dependencies
 * Change icon in set access buttons
 * Add translation texts
 * Update LICENSE file
 * Update paths in LICENSE file

**Bacularis API**

 * Update table modules to latest versions
 * Adapt tables to latest library version
 * Switch from Bower to NPM package registry
 * Update paths in LICENSE file
 * Update LICENSE file

**Bacularis Common**

 * Update table modules to latest versions
 * Adapt tables to latest library version
 * Update styles for latest table library
 * Change web interface fonts
 * Switch from Bower to NPM package registry
 * Fix view in resource access settings
 * Fix table behaviour in responsive mobile view
 * Fix align resource permission radio buttons
 * Update paths in LICENSE file
 * Update LICENSE file
 * Remove outdated images

**Bacularis APP**

 * Update table modules to latest versions
 * Switch from Bower to NPM package registry
 * Update paths in LICENSE file
 * Update LICENSE file

