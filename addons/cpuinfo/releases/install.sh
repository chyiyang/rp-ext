#!/bin/sh

if [ `mount | grep tmpRoot | wc -l` -gt 0 ] ; then
  HASBOOTED="yes"
  echo "System passed junior"
else
  echo "System is booting"
  HASBOOTED="no"
fi

if [ "$HASBOOTED" = "yes" ]; then
  echo "Installing daemon for cpuinfo"
  cp -v cpuinfo.sh /tmpRoot/usr/bin/cpuinfo.sh
  chmod 755 /tmpRoot/usr/bin/cpuinfo.sh

  DEST="/tmpRoot/usr/lib/systemd/system/cpuinfo.service"
  echo "[Unit]"                                          >${DEST}
  echo "Description=Adds correct CPU Info, from FOXBI"  >>${DEST}
  echo "After=multi-user.target"                        >>${DEST}
  echo                                                  >>${DEST}
  echo "[Service]"                                      >>${DEST}
  echo "Type=oneshot"                                   >>${DEST}
  echo "RemainAfterExit=true"                           >>${DEST}
  echo "ExecStart=/usr/bin/cpuinfo.sh"                  >>${DEST}
  echo                                                  >>${DEST}
  echo "[Install]"                                      >>${DEST}
  echo "WantedBy=multi-user.target"                     >>${DEST}

  mkdir -vp /tmpRoot/lib/systemd/system/multi-user.target.wants
  ln -vsf /usr/lib/systemd/system/cpuinfo.service /tmpRoot/lib/systemd/system/multi-user.target.wants/cpuinfo.service
fi
