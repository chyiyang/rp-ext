#!/usr/bin/env ash

if [ $(mount | grep tmpRoot | wc -l) -gt 0 ]; then
  HASBOOTED="yes"
  echo "System passed junior"
else
  echo "System is booting"
  HASBOOTED="no"
fi

if [ "$HASBOOTED" = "yes" ]; then
  echo "Installing daemon for hdddb"
  cp -vf hdddb.sh /tmpRoot/usr/bin/hdddb.sh

  DEST="/tmpRoot/usr/lib/systemd/system/hdddb.service"
  echo "[Unit]"                                    >${DEST}
  echo "Description=HDDs/SSDs drives databases"   >>${DEST}
  echo "After=multi-user.target"                  >>${DEST}
  echo                                            >>${DEST}
  echo "[Service]"                                >>${DEST}
  echo "Type=oneshot"                             >>${DEST}
  echo "RemainAfterExit=true"                     >>${DEST}
  echo "ExecStart=/usr/bin/bash /usr/bin/hdddb.sh -nfre" >>${DEST}
  echo                                            >>${DEST}
  echo "[Install]"                                >>${DEST}
  echo "WantedBy=multi-user.target"               >>${DEST}

  mkdir -vp /tmpRoot/lib/systemd/system/multi-user.target.wants
  ln -vsf /usr/lib/systemd/system/hdddb.service /tmpRoot/lib/systemd/system/multi-user.target.wants/hdddb.service
fi
