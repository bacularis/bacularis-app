#!/bin/bash

echo ""
echo "+=========================================+"
echo "| Welcome in the Bacularis install script |"
echo "+-----------------------------------------+"
echo "| This script will help you to adjust     |"
echo "| privileges for Bacularis files and      |"
echo "| it will prepare configuration files for |"
echo "| popular web servers.                    |"
echo "+-----------------------------------------+"
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

WEB_CFG_APACHE_SAMPLE="${PROTDIR}/samples/bacularis-apache.conf"
WEB_CFG_NGINX_SAMPLE="${PROTDIR}/samples/bacularis-nginx.conf"
WEB_CFG_LIGHTTPD_SAMPLE="${PROTDIR}/samples/bacularis-lighttpd.conf"

# Default values
DEFAULT_WEB_SERVER=1 # Apache
DEFAULT_WEB_USER='www-data'

WEB_USER=''

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
		msg 2 "You are not root. Please run this script as the root user."
		ret=0
	fi
	return $ret
}

# Get from stdin web server type (Apache, Nginx, Lighttpd...)
function get_web_server()
{
	read webserver

	if [ -z "$webserver" ]
	then
		webserver=$DEFAULT_WEB_SERVER
	fi
	echo $webserver
}

# Get from stdin web sever user
function get_web_user()
{
	read webuser

	if [ -z "$webuser" ]
	then
		webuser=$DEFAULT_WEB_USER
	fi
	echo $webuser
}

# Set directory permissions
function set_dir_ownership()
{
	echo -n "What is your web server user? [$DEFAULT_WEB_USER]: "
	local -r webuser=`get_web_user`
	WEB_USER=$webuser

	chown -R $webuser ${PROT_DIRS[@]} ${PUB_DIRS[@]}
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
	echo ""
	echo "What is your web server type?"
	local default=''
	for ((i=0; i<${#WEB_SERVERS[@]}; i++))
	do
		if [ $i -eq $((DEFAULT_WEB_SERVER-1)) ]
		then
			default='(default)'
		else
			default=''
		fi
		echo "$((i+1)) ${WEB_SERVERS[$i]} $default"
	done
	echo -n "Please type number between 1-${#WEB_SERVERS[@]} [$DEFAULT_WEB_SERVER]: "

	local -r webserver=`get_web_server`

	server_file='';
	case $webserver in
		1) server_file=$WEB_CFG_APACHE_SAMPLE
		;;
		2) server_file=$WEB_CFG_NGINX_SAMPLE
		;;
		3) server_file=$WEB_CFG_LIGHTTPD_SAMPLE
		;;
	esac

	if [ ! -z "$server_file" ]
	then
		msg 0 "Web server config file you can find in ${WEBDIR}/httpd.conf"
		msg 0 "Please move it to appropriate location."
		cat "$server_file" | sed -e "s!###WEBUSER###!${WEB_USER}!g" -e "s!###WEBROOT###!${WEBDIR}/htdocs!g" > "${WEBDIR}/httpd.conf"
		if [ $? -ne 0 ]
		then
			msg 2 "Error while preparing web server config"
		fi
	else
		msg 1 "No config sample for given web server"
	fi
}

function main()
{
	check_user
	set_dir_ownership
	set_dir_perms
	set_file_perms
	prepare_web_server_cfg
}

main

msg 0 'End.'
exit 0
