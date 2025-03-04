
This is new function and bug fix release. We have set the table headers as fixed. This means
that from now when scrolling through long tables, the table headers are visible all the time.
This helps to orient in the table columns regardless of the web browser scroll position.
Additionally, we added run job button to enable starting jobs on job list table.

On the bug fixes side, we fixed several important bugs. Some fixes improve overall application
performance. Of particular note is the fix for page timeout in some cases.

We have also added changes reported by the Community. Thank you for your activity and these
reports. Every comment or remark counts.

## Main changes

**Bacularis Web**

 * Add fixed table header
 * Add run job button to start jobs in the job table
 * Add info to set BlobEndpoint directive for non-AWS S3 cloud storage
 * Add previous/next buttons at the bottom of backup file list table
 * Fix page requests hang in some cases that could cause page timeout
 * Fix job log button in job history report window
 * Fix loading tags
 * Fix tags in restore wizard
 * Fix radio button style in tables

**Bacularis API**

 * Add fixed table header
 * Improve sorting backup files by mtime and by size

**Bacularis Common**

 * Add fixed table header
 * Add function to set table actions
 * Unify session management
 * Fix modal window visibility
 * Fix radio button style in tables

**Bacularis App**

 * Add fixed table header

