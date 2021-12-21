#!/bin/bash

####
# Bacularis - Bacula web interface
#
# Copyright (C) 2021 Marcin Haba
#
# The main author of Bacularis is Marcin Haba, with contributors, whose
# full list can be found in the AUTHORS file.
#
# You may use this file and others of this release according to the
# license defined in the LICENSE file, which includes the Affero General
# Public License, v3.0 ("AGPLv3") and some additional permissions and
# terms pursuant to its AGPLv3 Section 7.
####

echo ""
echo "+===================================================+"
echo "|      Welcome in the Bacularis install script      |"
echo "+---------------------------------------------------+"
echo "|  This script will help you to adjust privileges   |"
echo "|  for Bacularis files and it will prepare          |"
echo "|  configuration files for popular web servers.     |"
echo "+---------------------------------------------------+"
echo ""
echo ""

# Paths
TOOLDIR="`dirname $(readlink -f "$0")`"
PROTDIR="`dirname ${TOOLDIR}`"
WEBDIR="`dirname ${PROTDIR}`"

# Supported web servers' definition
WEB_SERVERS=(Apache Nginx Lighttpd Other)

# Protected directories
PROT_DIRS=(
	"${PROTDIR}/vendor/bacularis/bacularis-api/API/"{Logs,Config}
	"${PROTDIR}/vendor/bacularis/bacularis-web/Web/"{Logs,Config}
	"${PROTDIR}/runtime"
)

# Public directories
PUB_DIRS=(
	"${WEBDIR}/htdocs/assets"
)

# Protected files
PROT_FILES=(
	"${PROTDIR}/vendor/bacularis/bacularis-api/API/Config/bacularis.users"
	"${PROTDIR}/vendor/bacularis/bacularis-web/Web/Config/bacularis.users"
)

WEB_CFG_APACHE_SAMPLE="${PROTDIR}/samples/webserver/bacularis-apache.conf"
WEB_CFG_NGINX_SAMPLE="${PROTDIR}/samples/webserver/bacularis-nginx.conf"
WEB_CFG_LIGHTTPD_SAMPLE="${PROTDIR}/samples/webserver/bacularis-lighttpd.conf"

# Default values
DEFAULT_WEB_SERVER_IDX=1 # Apache
DEFAULT_WEB_USER='www-data'

SILENT_MODE=0

# Print message with given type
# Params:
#  integer $1 message type: 0 - info, 1 - warning, 2 - error, any other - unknown
#  string  $2 message body
function msg()
{
	local -r msg_type=$1
	local -r msg_body="$2"
	local type
	case $msg_type in
		0)
			type='[INFO]'
			;;
		1)
			type='[WARNING]'
			;;
		2)
			type='[ERROR]'
			;;
		*)
			type='[UNKNOWN]'
			;;
	esac
	echo "$type $msg_body"

	# Exit after displaying error type message
	if [ x$msg_type == x2 ]
	then
		exit 1
	fi
}

# Check if script is running by superuser (root)
function check_user()
{
	local ret=1
	if [ $(id -u) != 0 ]
	then
		msg 2 "You are not root. Please run this script as the root user to be able to set permissions or use -n parameter."
		ret=0
	fi
	return $ret
}

# Get from stdin web server type (Apache, Nginx, Lighttpd...)
function get_web_server()
{
	local web_server_idx=-1

	if [ $SILENT_MODE -eq 0 ]
	then
		echo "" >&2
		echo "What is your web server type?" >&2
		local default=''
		for ((i=0; i<${#WEB_SERVERS[@]}; i++))
		do
			if [ $i -eq $((DEFAULT_WEB_SERVER_IDX-1)) ]
			then
				default='(default)'
			else
				default=''
			fi
			echo "$((i+1)) ${WEB_SERVERS[$i]} $default" >&2
		done
		echo -n "Please type number between 1-${#WEB_SERVERS[@]} [$DEFAULT_WEB_SERVER_IDX]: " >&2
		read web_server_idx
	fi
	local web_server=`get_web_server_by_idx $web_server_idx`
	echo $web_server
}

function get_web_server_by_idx
{
	local web_server_idx="$1"
	local web_server=''

	case $web_server_idx in
		1) web_server='apache'
		;;
		2) web_server='nginx'
		;;
		3) web_server='lighttpd'
		;;
		4) web_server=''
		;;
		*) web_server=`get_web_server_by_idx $DEFAULT_WEB_SERVER_IDX`
	esac
	echo $web_server;
}

function get_web_user()
{
	local web_user=''

	if [ $SILENT_MODE -eq 0 ]
	then
		echo "" >&2
		echo -n "What is your web server user? [$DEFAULT_WEB_USER]: " >&2
		read web_user
	fi
	if [ -z "$web_user" ]
	then
		web_user=$DEFAULT_WEB_USER
	fi
	echo $web_user
}

# Set directory permissions
function set_dir_ownership()
{
	local web_user="$1"

	chown -R $web_user ${PROT_DIRS[@]} ${PUB_DIRS[@]}
	if [ $? -ne 0 ]
	then
		msg 2 "Error while setting directory ownership"
	fi
}

# Set directory permissions
function set_dir_perms()
{
	chmod 700 ${PROT_DIRS[@]}
	if [ $? -ne 0 ]
	then
		msg 2 "Error while setting directory permissions"
	fi
}

# Set file permissions
function set_file_perms() {
	chmod 600 ${PROT_FILES[@]}
	if [ $? -ne 0 ]
	then
		msg 2 "Error while setting file permissions"
	fi
}

function prepare_web_server_cfg()
{
	local web_server="$1"
	local web_user="$2"

	server_file='';
	case $web_server in
		apache) server_file=$WEB_CFG_APACHE_SAMPLE
		;;
		nginx) server_file=$WEB_CFG_NGINX_SAMPLE
		;;
		lighttpd) server_file=$WEB_CFG_LIGHTTPD_SAMPLE
		;;
	esac

	if [ ! -z "$server_file" ]
	then
		local ws_file=`basename $server_file`
		msg 0 "Web server config file you can find in ${WEBDIR}/$ws_file"
		msg 0 "Please move it to appropriate location."
		cat "$server_file" | sed \
			-e "s!###WEBUSER###!${web_user}!g" \
			-e "s!###WEBROOT###!${WEBDIR}/htdocs!g" \
			> "${WEBDIR}/$ws_file"
		if [ $? -ne 0 ]
		then
			msg 2 "Error while preparing web server config ${WEBDIR}/$ws_file"
		fi
	else
		msg 1 "No config sample for given web server"
	fi
}

function usage()
{
	echo "$0 [-u web_user] [-w web_server] [-n] [-s] [-h]:
		-u WEB_USER		web server user
		-w WEB_SERVER		web server type (apache, nginx or lighttpd)
					parameter possible to use multiple times
		-n			don't set directory ownership and permissions
		-s			silent mode
					don't ask about anything
		-h, --help		display this message
"
	exit 0
}

function main()
{
	local web_user=''
	local web_servers=''
	local no_perm=0

	if [ "$1" == '--help' ]
	then
		usage
	fi

	while getopts "nsu:w:h" opt
	do
		case $opt in
			u)
				web_user=$OPTARG
				;;
			w)
				web_servers="$web_servers $OPTARG"
				;;
			n)
				no_perm=1
				;;
			s)
				SILENT_MODE=1
				;;
			h|*)
				usage
				;;
		esac
	done

	if [ $no_perm -eq 0 ]
	then
		check_user
	fi

	if [ -z "$web_servers" ]
	then
		web_servers=`get_web_server`
		if [ -z "$web_servers" ]
		then
			msg 1 'Unknown web server. You need to prepare web server configuration self.'
		fi
	fi

	if [ -z "$web_user" ]
	then
		web_user=`get_web_user`
	fi

	if [ $no_perm -eq 0 ]
	then
		if [ ! -z "$web_user" ]
		then
			set_dir_ownership $web_user
		fi
		set_dir_perms
		set_file_perms
	fi

	for ws in $web_servers
	do
		prepare_web_server_cfg $ws $web_user
	done
}

main $*

msg 0 'End.'
exit 0
