
We’re pleased to announce the release of **Bacularis 5.5.0**.

This version introduces a new feature for detecting incompatibilities between
 Bacula components. If any component is found to be incompatible, Bacularis will
 **alert you** and provide a clear explanation of what’s wrong and where the
 issue lies. This is especially helpful for new users unfamiliar with Bacula’s
 compatibility rules.

For administrators, we’ve added several usability improvements to streamline
 user management. These include **bulk actions** that allow you to assign or
 unassign roles to multiple users at once, as well as manage user organization
 settings in bulk.

We’ve also added support for the upcoming **Debian 13 "Trixie"**, ensuring
 compatibility with the next major Debian release.

On the Identity Provider page, new filters have been introduced, allowing you
 to filter by various IdP properties for easier navigation and management.

On the API side, we’ve added a new **Director uname endpoint**.

Finally, we’ve fixed an important bug in the **new user wizard** that previously
 caused error when creating users through the wizard.

We wish you smooth installations and upgrades!

## Main changes

**Bacularis Web**

 * Add bulk assign user roles
 * Add bulk unassign user roles
 * Add bulk set user organization
 * Add warning to client list if FD version is greater than DIR/SD version
 * Add warning to client status if FD version is greater than DIR/SD version
 * Add warning to storage status if SD version is different than DIR version
 * Add new filters to identity provider page
 * Add organization info to user wizard summary
 * Add Debian 13 Trixie support
 * Fix new user wizard if no organization selected

**Bacularis API**

 * Add ``/directors/{director_name}/uname`` endpoint
 * Add missing ``/directors/{director_name}/show endpoint`` to API documentation
 * Add new uname module
 * Update API documentation
 * Update API doc version
 * Fix uname module description

**Bacularis Common**

 * Small refactor in table toolbar functions

