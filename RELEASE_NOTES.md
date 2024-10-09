
This is new function and bug fix release. We prepared something useful for
cloud storage users. It is a new wizard that creates a new cloud storage ready
to work with Bacula. The only requirement is to have the cloud plugin installed.
Rest is realized in this new wizard. There is possible to create both single
cloud storage and cloud autochangers as well.

We improved a functions to set access for specific Bacula resources. They are
functions on the security page. We also added protection to not assign restricted
access to the 'Main' host that always should stay the full access host.

On the packages side, we are ready to support the Ubuntu 24.10 Oracular Oriole.
Packages for this Ubuntu version are ready starting from this Bacularis 4.3.0.

## Main changes

**Bacularis Web**
 - Add new cloud storage wizard
 - Add OS profile for Ubuntu 24.10 Oracular Oriole
 - Add descriptions to functions on deployment and security pages
 - Improve file storage wizard
 - Misc improvements to set access function on security page
 - Fix drive index in new file storage wizard

**Bacularis Common**
 - Fix javascript error in Bacula resource permission settings

