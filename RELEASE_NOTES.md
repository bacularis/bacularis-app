
This is new feature and bug fix release that brings many new changes.
The biggest change is add-on support. We prepared a new Bacularis Add-ons
web service where you can download plugins, themes and language packs
for Bacularis. We encourage to visit this website because we will regularly
add there new add-ons. For now we share there a few resources but we have
plenty of ideas for new add-ons, so more should come soon. You can find
there for example: plugins, various coloured themes and translations into
new languages (German, Spanish, Italian). The Bacularis Add-ons web service
is available here: https://addons.bacularis.app

On the plugin side, we prepared changes for a new plugin types. They are
the action plugins. The most interesting is that the action plugins are
not linked to any place in Bacularis. They provide functions that can be
attached to different actions in system. For example, a job action plugin
can be attached to post-create job event, but the same it can be attached
to run-job event or others. This change introduces a lot of flexibility
in using plugins, that can be executed on many actions in Bacularis.

On the Community request we prepared a new API host job access plugin
that is the action plugin and which enables easier managing restricted
access for users to Bacula resources. Besides that, we created a job
action plugin to work with job plugins.

Thanks to the Community activity we fixed a couple of bugs in the web
interface and API parts.

## Main changes

**Bacularis Web**

 * New Add-ons page
 * Add API host job access plugin
 * Add job action plugin
 * Add to bulk apply configs show/hide configs used in patterns
 * Add action type plugin support
 * Add support for plugin actions in job wizards
 * Use new backup plugin type
 * Update base translation files
 * Move plugins to new Add-ons page
 * Move API host job access plugin to plugins repository
 * Adapt various HTML elements to new themes
 * Prepare base class for new resource action plugins
 * Narrow down configs and patterns validation
 * Make text shorter in job table header
 * Add Beata to AUTHORS
 * Fix javascript error on application settings page
 * Fix updating console ACL in set access function
 * Fix gauge error on status storage page
 * Fix storage list in new virtual full job wizard
 * Fix header in job history report
 * Fix validation on using copy configuration combobox
 * Fix client system pie chart if uname distribution version is empty

**Bacularis Common**

 * Add action and run action plugin interfaces
 * Add new functions to plugin manager
 * Add array multiple ordered values control
 * Add backup plugin type
 * Add end-of-line to direct log messages
 * Adapt styles to support themes
 * Use table page length field without aditional description
 * Misc improvements to plugin setting list
 * Remove unused plugin extra parameters
 * Add Beata to AUTHORS
 * Fix typo error in job resource dependencies

**Bacularis API**

 * Update base translation files
 * Add to /jobs/estimate endpoint documentation missing level parameter
 * Remove duplicated BconsoleException file
 * Change API plugin module into plugin manager module
 * Add Beata to AUTHORS
 * Fix name filter validation in /jobs endpoint
 * Fix documentation for /jobs/resnames endpoint


