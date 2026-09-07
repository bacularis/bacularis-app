
Hello Community,

Bacularis 6.5.1 is a security and maintenance release that addresses two
stored cross-site scripting (XSS) vulnerabilities and includes additional
hardening of output escaping and input validation across the web interface.

The reported vulnerabilities could allow specially crafted values to be
stored and later interpreted as JavaScript when affected pages were viewed.
Both issues have been fixed in this release. During the review, additional
similar code paths were also hardened to reduce the risk of related issues.

The vulnerabilities affect the following Bacularis versions:

- one stored XSS issue affects versions 1.0.0 through 6.5.0,
- the second stored XSS issue affects versions 4.7.0 through 6.5.0.

Both vulnerabilities are fixed in Bacularis 6.5.1.

Users are encouraged to update to Bacularis 6.5.1 using the installation
method appropriate for their deployment.

CVE identifiers will be added once they are assigned and published.

### Main changes

**Bacularis Web**

- Fix stored XSS vulnerabilities in client- and tag-related views
- Add additional security hardening and output escaping fixes
- Fix tag validation and add value escaping
- Escape client address in client details view
- Fix selected path in verification rules if the search field was used to
  find items

**Bacularis API**

- Additional security hardening and output escaping fixes.

**Bacularis Common**

- Add port validator to new host portlet
- Add JSON value helper
- Add helper for escaping special characters
- Fix checker support for symbolic links

