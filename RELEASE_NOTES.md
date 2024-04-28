
This is a minor new feature and bug fix release. We added support for LDAP filters.

From the fixes side, we disabled capability to log in with empty password for LDAP authentication method if LDAP server allows it.
This has meaning for authentication with LDAP servers that have the unauthenticated authentication method enabled (like Windows Active Directory) and that allow logging in with empty password.

At the end we updated the Polish language translations for API and Web.

Bacularis Web
 - Add LDAP filters support in LDAP authentication method
 - Update Polish translations

Bacularis API
 - Update Polish translations

Bacularis Common
 - Disable logging in with empty password for LDAP authentication method
 - Add support for LDAP filters

