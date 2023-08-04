#!/bin/sh

if [ $(mount | grep tmpRoot | wc -l) -gt 0 ]; then
  HASBOOTED="yes"
  echo "System passed junior"
else
  echo "System is booting"
  HASBOOTED="no"
fi

if [ "$HASBOOTED" = "yes" ]; then
  echo "Copying lsiutil to HD"
  cp -vf lsiutil /tmpRoot/usr/sbin/lsiutil
fi
