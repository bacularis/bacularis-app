#!/bin/bash

####
# Bacularis - Bacula web interface
#
# Copyright (C) 2021-2022 Marcin Haba
#
# The main author of Bacularis is Marcin Haba, with contributors, whose
# full list can be found in the AUTHORS file.
#
# You may use this file and others of this release according to the
# license defined in the LICENSE file, which includes the Affero General
# Public License, v3.0 ("AGPLv3") and some additional permissions and
# terms pursuant to its AGPLv3 Section 7.
####

# Paths
PROJDIR="`readlink -f $(dirname ${0})/../..`"

# Vendor directory
VENDIR="protected/vendor"

# Backup file name
BACKUP_FILE='bacularis-backup.tar'

# Protected directories
PROT_DIRS=(
	"${VENDIR}/bacularis/bacularis-api/API/"{Logs,Config}
	"${VENDIR}/bacularis/bacularis-web/Web/"{Logs,Config}
)

# Do config and log files backup.
# It is done both for API and Web components.
function backup_files()
{
	if [ ! -w "$PWD" ]
	then
		echo "ERROR: Directory $PWD is not writeable."
		exit 1

	fi
	tar cf "${BACKUP_FILE}" ${PROT_DIRS[@]}
	if [ $? -ne 0 ]
	then
		echo "ERROR: Problem while creating backup."
		exit 1
	fi
}

# Do config and log files restore.
# It is done both for API and Web components.
function restore_files() {
	if [ -e "${BACKUP_FILE}" ]
	then
		tar xf "${BACKUP_FILE}"
		if [ $? -eq 0 ]
		then
			rm "${BACKUP_FILE}"
		else
			echo "ERROR: Problem while restoring backup."
			exit 1
		fi
	else
		echo "INFO: No backup to restore."
		exit 0
	fi
}

# Display information about needs to set privileges.
function privileges_info()
{
	local dir
	if [ $(id -u) != 0 ]
	then
		echo " ==== NOTE! You are not root. ===="
		echo " Please make sure that the directories owner is the web server user:"
		for dir in ${PROT_DIRS[@]}
		do
			echo "    -> $dir"
		done
	fi
}

function usage() {
	echo "$0 (backup|restore):
		backup			Web and API configuration backup
		restore			Web and API configuration restore
"
}

cd "$PROJDIR"

if [ ! -d "$VENDIR" ]
then
	# It is installation, no backup needed
	exit 0
fi

if [ "$1" == "backup" ]
then
	backup_files
elif [ "$1" == "restore" ]
then
	restore_files
	privileges_info
else
	usage
fi

exit 0
