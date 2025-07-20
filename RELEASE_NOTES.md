
We are pleased to announce the new version of Bacularis 5.4.0. This is a really
big release with many new changes and features. These changes may be particularly
useful for medium and large companies that want to adapt Bacularis to identity
and access management (IAM) systems, but not only.

First of all, we have added support for single sign-on (SSO). Bacularis can be
integrated with a wide range of identity providers (Keycloak, Okta ...etc.).
Bacularis is able to work with identity providers compatible with the OpenID Connect
protocol. There can be configured one or many identity providers from different domains.

Second new feature is support for organizations. Using organizations allows to
assign users to named groups. This can be useful e.g. in companies with multiple
departments and wherever users are divided into groups. Each organization can have
its own identity provider configured, meaning that users from each organization
can authenticate to different IdP. Bacularis accounts can also be transferred
between user federations from one organization to another.

We have also added a new feature - user provisioning. This saves administrator
time because, once provisioning is enabled, Bacularis accounts can be created
dynamically the first time a user logs in. The administrator can define default
account properties (permissions, roles, API hosts and organization).

Next part of new changes concerns logging in using social media credentials.
We have added ability to log in using Google and Facebook social media accounts.
We also plan to add support for more social media services. Very soon on the
Bacularis User Group should be available a poll, where you can vote and report
what other services you would like to see on supported social login list.

For the rest, we prepared new API changes requested by the Community such as
a new update volume endpoint, we slightly reworked the Bacularis login page to
make it look better, and made other improvements and fixes.

Finally, it is worth mentioning the new chapter of the Bacularis documentation
dedicated to authentication, where you can find detailed information about these
new features (SSO, identity providers...). You can also find the video guides
there showing how to configure the new authentication functions.

We wish you easy installations and upgrades. Have a good using Bacula with Bacularis.


## Main changes

**Bacularis Web**

 * Add organization support
 * Add OpenID Connect protocol support
 * Add single sign-on support (SSO)
 * Add user federations
 * Add multiple identity provider (IdP) support
 * Add user provisioning
 * Add Google social login
 * Add Facebook social login
 * Add new web session module
 * Add synchronous OIDC SLO for some identity providers (e.g. Okta)
 * Add Facebook authentication module
 * Add post logout redirect URI and load discovery info
 * Add new organization keyword to email notification plugin
 * Add protection to removing used organizations and IdPs
 * New look of login screen
 * New session module for OpenID Connect
 * Improve user log out action
 * Improve login page
 * Enable support for refresh tokens
 * Reorganize security page
 * Change roles and API hosts to multi-value fields in general security settings
 * Adapt organization support on user pages
 * Use public key from JWKS endpoint
 * Hide translation string marker
 * Set identity provider identifier from name
 * Reorganize identity provider and OIDC modules
 * Enable organization full name validation
 * Extend default OIDC scope
 * Small improvements in organization support
 * Update Facebook API to latest version
 * Update OIDC scope
 * Fix basic authentication
 * Fix saving organization identity provider
 * Fix session termination
 * Fix account page error if user account does not exist
 * Fix error message about missing user attribute
 * Fix PHP error if verify key is not available

**Bacularis Common**

 * Add new PKCE security extension to OAuth2 protocol
 * Add generic HTTP client
 * Add flush logs before redirecing page
 * Add support for passing multiple criterias to bulk action command
 * Add JWT type token decoder
 * Add methods to get public key from certificate
 * Add function to match colors
 * Add new styles for color picker
 * Enable HttpOnly cookie flag
 * Update SELinux policy module
 * Adapt WebAuthn protocol modules to support organizations
 * Move send authentication header
 * Prase max age from cache control header
 * Include response headers in HTTP client result
 * Prepare public key using modulus and exponent values
 * Fix file name prefix in crypto keys module
 * Fix error in audit log if user is not logged in

**Bacularis API**

 * Add new /pools/update/volumes endpoint
 * Simplify API endpoint to update all volumes in pool
 * Hide translation string marker
 * Adapt install wizard to new user organization changes
 * Fix PHP error in installation wizard

