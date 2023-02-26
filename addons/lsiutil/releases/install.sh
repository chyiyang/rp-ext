#!/usr/bin/env ash

if [ `mount | grep tmpRoot | wc -l` -gt 0 ] ; then
  echo "Copying lsiutil to HD"
  cp -vf lsiutil /tmpRoot/usr/sbin/lsiutil
fi
