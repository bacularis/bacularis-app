<?php
/*
 * Bacularis - Bacula web interface
 *
 * Copyright (C) 2021 Marcin Haba
 *
 * The main author of Bacularis is Marcin Haba, with contributors, whose
 * full list can be found in the AUTHORS file.
 *
 * Bacula(R) - The Network Backup Solution
 * Baculum   - Bacula web interface
 *
 * Copyright (C) 2013-2016 Kern Sibbald
 *
 * The main author of Baculum is Marcin Haba.
 * The original author of Bacula is Kern Sibbald, with contributions
 * from many others, a complete list can be found in the file AUTHORS.
 *
 * You may use this file and others of this release according to the
 * license defined in the LICENSE file, which includes the Affero General
 * Public License, v3.0 ("AGPLv3") and some additional permissions and
 * terms pursuant to its AGPLv3 Section 7.
 *
 * This notice must be preserved when any source code is
 * conveyed and/or propagated.
 *
 * Bacula(R) is a registered trademark of Kern Sibbald.
 */

/*
 * Constant is used to localize always valid document root directory
 * Using for placing Baculum files in document root subdirectory
 */
define('APPLICATION_DIRECTORY', dirname(__DIR__));
define('APPLICATION_WEBROOT', APPLICATION_DIRECTORY . '/htdocs');
define('APPLICATION_PROTECTED', APPLICATION_DIRECTORY . '/protected');
define('PRADO_VENDORDIR', APPLICATION_PROTECTED . '/vendor');

require(APPLICATION_PROTECTED . '/autoload.php');
$application = new \Prado\TApplication(APPLICATION_PROTECTED);
$application->run();
?>
