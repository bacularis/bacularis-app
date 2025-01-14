
This is a new feature and bug fix release. It provides many new functions and
improvements. We added an interface to install, renew and uninstall SSL certificates.
The renewing certificate process can be run by system scheduler (cron,
systemd timer...) or triggered manually on demand on the web interface.

We prepared support for creating two certificate types: self-signed certificates
created locally and Let's Encrypt certificates obtained from external CA. Certificates
are created, installed, and automatically configured in the web server configuration.
The Let's Encrypt certificates are acquired using ACME protocol with HTTP-01 challenge.

Besides that we added a new web server settings function with network options. Currently
there is possible to change on the web interface the Bacularis web server port.

In the Bacularis health self-test suite we added two new tests. They are to check
bconsole and catalog access time. They can help diagnosing performance issues.

New users installing Bacula through the Bacularis initial wizard will be able to test
credentials before running the installation because we added a button to perform this
type of test.

At the end we did many other smaller improvements, specially in the deployment
functions and authentication modules.

## Main changes

**Bacularis Common**

 * Add install/renew/uninstall SSL certificate module
 * Add Let's Encrypt certificate support
 * Add self-signed certificate support
 * Add web server settings control
 * Add change web server port support
 * Add admin access control
 * Add ACME protocol support
 * Add web server config module
 * New direct common log
 * New HTTP header module
 * SU module improvements
 * Improve error reporting in admin access control
 * Prepare command to automatic renew certificate
 * Add JSON Web Token module
 * Add cryptographic key modules
 * Add base64url and hextobase64 encoders
 * Add execute command module
 * Add SSL certificate module
 * Add detecting web server method
 * Extend escaping special characters in su module
 * Update application config
 * Update SELinux policy module
 * Use retry-after header value to waiting on next request
 * Switch Let's Encrypt directory from staging to production
 * Fix creating Let's Encrypt certificate
 * Fix displaying error messages in admin access window
 * Fix displaying address in common name field

**Bacularis Web**

 * Add web server settings and SSL certificate features
 * Add new SSL certs feature on application settings page
 * Use new SSL certificate functions on deployment page
 * Improve remove button in various directives
 * Various deployment improvements
 * Change method accessibility in OS profile module
 * New update host config method
 * Use new headers module
 * Remove methods moved to Common module
 * Fix setting up HTTPS in API deployment

**Bacularis API**

 * Add to self test suite catalog and bconsole access time tests
 * Add test login button to install wizard
 * Add validators to install Bacula form

