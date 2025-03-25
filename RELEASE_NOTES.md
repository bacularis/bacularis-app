
We are glad to announce a new major Bacularis release 5.0.0. Changes in this
version are mainly related to modern security functions and to installation
process.

On the security side we added support for logging in with U2F hardware keys.
The security keys are used in the second factor of the authentication.
We reorganized the account settings page to provide better interface for
managing 2FA methods. Now users can choose which 2FA method they want to use
and they can easily switch between: time-based authenticators (TOTP) and
security keys (U2F).

For the installation process, we prepared changes in the install wizard. This
is for helping new Bacularis users and also new Bacula users in first contact
with Bacula-related software. This is important for us to encourage users to
try Bacula. We try to do it in various way and making Bacularis functions
easier is one of them.

Besides new functions and improvements, new Bacularis 5.0.0 is also the bugfix
release. Specially worth to mention is a fix to restore using copy jobs reported
by the Community and also fixes to the install wizard.

## Main changes

**Bacularis Web**

 * Add FIDO U2F/CTAP1 hardware key support for two-factor login
 * Add graphical average speed gauge in running job status
 * Enable restore from copy job for selected job restore method
 * Show warning message on try using FIDO U2F method without HTTPS connection
 * Disable opened session if not needed
 * Hide average job speed gauge in specific cases
 * Fix culture settings for web module
 * Fix remove file/dir selection in restore wizard

**Bacularis API**

 * Fix restore from copy jobs
 * Misc improvements and fixes in install wizard
 * Add copy to clipboard buttons to sudo configuration
 * Fix passing API boolean parameters
 * Update OpenAPI documentation
 * Update texts in API settings page

**Bacularis Common**

 * Add FIDO U2F functions
 * Add WebAuthn protocol support
 * Add new copy button control
 * Add signature verify methods
 * Add base64 and base64url methods
 * Add styles for fieldset elements
 * Improve login error reporting
 * Define new 2FA modules

