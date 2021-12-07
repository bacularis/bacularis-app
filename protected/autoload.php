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
 * Copyright (C) 2013-2021 Kern Sibbald
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

/**
 * Baculum autoloader class.
 *
 * Implementation of PSR-4 autoloader for loading Baculum files. It supports
 * multiple namespaces.
 *
 * NOTE: Same Baculum code is not compatible with PSR-4 yet but it uses
 * this autoloader class to load dependencies.
 *
 * @author Marcin Haba <marcin.haba@bacula.pl>
 * @category Tool
 * @package Baculum Common
 */

$namespaces = [
	'Prado\\' => APPLICATION_DIRECTORY . '/protected/vendor/pradosoft/prado/framework',
	'JSMin\\' => APPLICATION_DIRECTORY . '/protected/vendor/mrclay/jsmin-php/src/JSMin',
	'Bacularis\\' => APPLICATION_DIRECTORY . '/protected'
];

class BaculumAutoloader {

	const CLASS_FILE_EXTENSION = '.php';

	private $namespaces = [];

	public function __construct() {
		spl_autoload_register([$this, 'load']);
	}

	public function setNamapaces(array $nss) {
		foreach ($nss as $prefix => $path) {
			$this->addNamespace($prefix, $path);
		}
	}

	public function addNamespace($prefix, $path) {
		$path = rtrim($path, DIRECTORY_SEPARATOR) . '/';

		if (!key_exists($prefix, $this->namespaces)) {
			$this->namespaces[$prefix] = $path;
		}
	}

	public function load($path) {
		$pos = strrpos($path, '\\');
		if ($pos !== false) {
			$class = substr($path, $pos + 1);
			$rpath = substr($path, 0, $pos + 1);
			$this->loadFile($class, $rpath);
		}
	}
	

	private function loadFile($class, $rpath) {
		$ns = $this->getNamespace($rpath);
		if (is_array($ns)) {
			list($prefix, $path) = $ns;
			$len = strlen($prefix);
			$relative_path = substr($rpath, $len);
			$relative_path = str_replace('\\', DIRECTORY_SEPARATOR, $relative_path);
			$file = $path . $relative_path . $class . self::CLASS_FILE_EXTENSION;
			if (file_exists($file)) {
				require($file);
			}
		}
	}

	private function getNamespace($rpath) {
		$ns = false;
		foreach ($this->namespaces as $prefix => $path) {
			$len = strlen($prefix);
			if (strncmp($prefix, $rpath, $len) === 0) {
				$ns = [$prefix, $path];
				break;
			}
		}
		return $ns;
	}
}

$autoloader = new BaculumAutoloader;
$autoloader->setNamapaces($namespaces);
