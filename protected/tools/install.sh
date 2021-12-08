#!/bin/sh

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


if [ $(id -u) != 0 ]
then
	echo "You are not root. Please run this script as the root user."
fi

echo "What is your web server type?"
echo "1 Apache (default)"
echo "2 Nginx"
echo "3 Lighttpd"
echo "4 Other"

echo "Please type number between 1-4:"
read webserver

echo "What is your web server user? [www-data]:"
read webuser

TOOLDIR="`dirname $(readlink -f "$0")`"
PROTDIR="`dirname ${TOOLDIR}`"
WEBDIR="`dirname ${PROTDIR}`"

chown -R $webuser \
	"${PROTDIR}/vendor/bacularis/bacularis-api/API/"{Logs,Config} \
	"${PROTDIR}/vendor/bacularis/bacularis-web/Web/"{Logs,Config} \
	"${PROTDIR}/runtime" \
	"${WEBDIR}/htdocs/assets"

chmod 700 "${PROTDIR}/vendor/bacularis/bacularis-api/API/"{Logs,Config} \
	"${PROTDIR}/vendor/bacularis/bacularis-web/Web/"{Logs,Config}

chmod 600 "${PROTDIR}/vendor/bacularis/bacularis-api/API/Config/baculum.users" \
	"${PROTDIR}/vendor/bacularis/bacularis-web/Web/Config/baculum.users"

server_file='';
case $webserver in
	1) server_file="${PROTDIR}/samples/bacularis-apache.conf"
	;;
	2) server_file="${PROTDIR}/samples/bacularis-nginx.conf"
	;;
	3) server_file="${PROTDIR}/samples/bacularis-lighttpd.conf"
	;;
esac

echo "Done!"
if [ ! -z "$server_file" ]
then
    echo "Web server config file you can find in ${WEBDIR}/httpd.conf"
    echo "Please move it to appropriate location."

    cat "$server_file" | sed -e "s!###WEBUSER###!${webuser}!g" -e "s!###WEBROOT###!${WEBDIR}/htdocs!g" > "${WEBDIR}/httpd.conf"
fi

exit 0