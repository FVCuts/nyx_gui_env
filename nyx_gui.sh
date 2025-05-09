#!/bin/sh

APP="NyxGUI"
FOLDER=$(pwd)
CONFIG_NEW="$FOLDER/config/appsettings.json"
CONFIG_CURRENT="$FOLDER/bin/appsettings.json"
CA_FILE="$FOLDER/certs/server.crt"

. $FOLDER/sh/colors.sh

figlet $APP

echo "\n${BWHITE}Certificates${NC}"
if [ -e $CA_FILE ]; then
	echo "* ${GREEN}Certificate CA found${NC}"
	LINK=$(ls -la /etc/ssl/certs | grep "$FOLDER")
	if [ -z "$LINK" ]; then
		echo "* ${YELLOW}Link missing${NC}"
		ln -s $CA_FILE /etc/ssl/certs/$APP.pem
	else
		echo "* ${GREEN}Link exists${NC}"
	fi
else
	echo "* ${YELLOW}No certificate CA found${NC}"
fi

echo "\n${BWHITE}Configuration${NC}"
if cmp -s "$CONFIG_NEW" "$CONFIG_CURRENT"; then
    echo "* ${GREEN}Same files${NC}"
else
    echo "* ${YELLOW}Different files${NC}"
    cp $CONFIG_NEW $CONFIG_CURRENT
fi

echo "\n${BWHITE}Executable${NC}"
if [ -x "$FOLDER/bin/$APP" ]; then
    echo "* ${GREEN}Already executable${NC}"
else
    echo "* ${YELLOW}Change to executable${NC}"
	chmod +x $APP
fi

echo "\n${BWHITE}Application starts${NC}"
cd $FOLDER/bin
#$FOLDER/bin/$APP
echo "${BWHITE}Application ends${NC}\n"
