#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "$0 <bitwarden item name>"
	exit 1
fi
BW_ITEM_NAME=$1

source ~/github/bitwarden-iterm-helper/config.sh

# ID=$(bw list items --search "$BW_ITEM_NAME" | jq --raw-output ".[] | select( .name == \"$BW_ITEM_NAME\") | .id")

TOTP=$(bw get totp '1f7bc797-0051-498e-a15e-b058005d6301')

echo $TOTP
