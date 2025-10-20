
We are pleased to announce the release of **Bacularis 5.8.0**.
This version introduces **improved accuracy** for running job byte and file
estimations. Users can now choose between quick estimations (default) or
more precise data gathered directly from the Bacula client. This feature
was inspired by an idea from Community user Rui.

This release also focuses on **language support**: Spanish, German, Italian,
and Polish translations have been updated.

Additionally, this version includes **several bug fixes**.
Community contributor MmAaXx500 provided a fix for OIDC single sign-on
compatibility issues affecting certain identity providers (e.g. Nextcloud).
We have also corrected an issue related to the SSL certificate creation form.

Finally, Bacularis has been prepared to support the new **openSUSE 16.0**
release.

We wish you smooth installations and upgrades!

## Main changes

**Bacularis Web**

 * Add button to accurate job estimation for bytes/files progress bars in running job status
 * Improve job estimation in run job window
 * Make at\_hash optional to comply with OIDC spec
 * Make total number of backed up files more readable
 * Add MmAaXx500 to AUTHORS

**Bacularis Common**

 * Fix reset common name text field in SSL certs form
 * Update SELinux policy module for openSUSE 16.0
 * Add MmAaXx500 to AUTHORS

**Languages**

 * Update Spanish translations
 * Update German translations
 * Update Italian translations
 * Update Polish translations

**Contributors**
@MmAaXx500
Rui

