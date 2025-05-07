
We are happy to announce a new version 5.2.0. This is new function and bugfix release.
We have prepared quite a lot of new changes in various web interface areas. 

We would especially like to share with you that we introduced user-defined variables and
constants. Variables work with Bacula configuration patterns, constants work in whole web
interface, not only in configuration. Variables can be particularly useful for creating
customizable Bacula configuration templates that are dynamically filled by user in time
of use. Constants are some kind of user-created dictionary with most commonly used words
and they can be accessed in every text field of the web interface. More details about this
functions you can find in the new variable and constant documentation chapters.

We have also added new functions on the client list page. Since now users can see jobs
running on every client, can filter them by working/not working and can cancel all jobs
currently running on selected clients. On this page we added a new graphs tab with client
pie charts (systems, versions, plugins ...etc.).

Besides new functions, we fixed bugs that we found in the patterns and configs features
and in few other places.

## Main changes

**Bacularis Web**

 * Add constants and variables feature
 * Add client pie charts
 * Add cancel all client jobs action to client table
 * Add all/running/not-running job filters to client table
 * Add working status column to client table
 * Add global check/uncheck all resources in save to pattern feature
 * Add copy configuration function to create pattern config window
 * Add bulk cancel component jobs control
 * Add editable listbox control
 * Add editable ordered listbox control
 * Add editable combobox control
 * Add new config modes to configuration directives
 * Add loader to run job window
 * Use variables in bulk apply configs and patterns
 * Visual improvements to use variables and constants
 * Improve get config values
 * Keep cancel jobs window open if error happens
 * Fix editable ordered listbox control
 * Fix javascript error on patterns page
 * Fix bulk apply configs
 * Fix multi combobox directive value in pattern config
 * Fix save runscript in pattern config
 * Fix save schedule in pattern config
 * Fix add component to director in deployment if director resource already exists
 * Fix PHP error in API host settings if Bacula component configuration is disabled

**Bacularis Common**

 * Add helper cursor style
 * Add styles for variable and constant pickers
 * Improve get config values
 * Fix PHP error in web install wizard if Bacula component configuration is disabled

