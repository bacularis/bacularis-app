
Hello Community,

We are pleased to announce the release of Bacularis 6.5.2. As previously
announced, this is a maintenance release focused primarily on security
and application hardening.

Version 6.5.2 includes fixes and changes prepared as part of a security
review. We strengthened the Bacularis codebase and standardized the way
data from users, Bacula, the API, and other sources is validated
and handled securely.

In this release, we also fixed two reported stored XSS vulnerabilities
that could allow crafted JavaScript code to be executed in a user's
browser.

* The first vulnerability affects versions 1.0.0 through 6.5.1.
* The second vulnerability affects versions 5.4.0 through 6.5.1.

Bacularis 6.5.2 includes fixes for both vulnerabilities. CVE identifiers
will be added once they are published.

Users running affected versions are encouraged to upgrade
to Bacularis 6.5.2.

In addition to the security-related changes, we also introduced minor
fixes to some Restore Verification checkers.

The security review was both a response to the reported issues and
a preventive measure. Its purpose was not only to address the identified
problems, but also to strengthen Bacularis through additional hardening
and by standardizing secure data handling across different
parts of the application.

We hope you enjoy using Bacularis and encourage you to upgrade
to version 6.5.2.

Best regards,
The Bacularis Team

### Main changes

**Bacularis Web**

* Apply security hardening after security review
* Add additional verification rules checking
* Improve import users validation
* Improve validation in drive unload
* Improve validation in pattern functions

**Bacularis API**

* Apply security hardening after security review
* Improve storage release validation

**Bacularis Common**

* Apply security hardening after security review
* Fix PHP warning in restore verification checksum checkers if item is directory

