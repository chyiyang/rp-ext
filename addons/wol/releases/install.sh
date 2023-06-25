#!/bin/sh

if [ `mount | grep tmpRoot | wc -l` -gt 0 ] ; then
  HASBOOTED="yes"
  echo "System passed junior"
else
  echo "System is booting"
  HASBOOTED="no"
fi

if [ "${HASBOOTED}" = "yes" ]; then
  echo "Creating service to exec ethtool"
  cp -v ethtool /tmpRoot/usr/sbin/ethtool
  chmod 755 /tmpRoot/usr/sbin/ethtool.sh

  DEST="/tmpRoot/lib/systemd/system/ethtool.service"
  echo "[Unit]"                                                                >${DEST}
  echo "Description=ARPL force WoL on eth0"                                   >>${DEST}
  echo                                                                        >>${DEST}
  echo "[Service]"                                                            >>${DEST}
  echo "Type=oneshot"                                                         >>${DEST}
  echo "RemainAfterExit=true"                                                 >>${DEST}
  echo "ExecStart=/usr/sbin/ethtool -s eth0 wol g"                            >>${DEST}
  echo "ExecStop=/usr/sbin/ethtool -s eth0 wol g"                             >>${DEST}
  echo                                                                        >>${DEST}
  echo "[Install]"                                                            >>${DEST}
  echo "WantedBy=multi-user.target"                                           >>${DEST}

  mkdir -p /tmpRoot/etc/systemd/system/multi-user.target.wants
  ln -sf /lib/systemd/system/ethtool.service /tmpRoot/lib/systemd/system/multi-user.target.wants/ethtool.service
fi
