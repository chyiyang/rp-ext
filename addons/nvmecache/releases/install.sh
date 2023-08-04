#!/usr/bin/env sh

if [ $(mount | grep tmpRoot | wc -l) -gt 0 ]; then
  HASBOOTED="yes"
  echo "System passed junior"
else
  echo "System is booting"
  HASBOOTED="no"
fi

if [ "$HASBOOTED" = "yes" ]; then
  echo "Installing daemon for nvmecache"
  cp -v nvmecache.sh /tmpRoot/usr/bin/nvmecache.sh

  DEST="/tmpRoot/usr/lib/systemd/system/nvmecache.service"
  echo "[Unit]"                                    >${DEST}
  echo "Description=Enable M2 Cache"              >>${DEST}
  echo "After=multi-user.target"                  >>${DEST}
  echo                                            >>${DEST}
  echo "[Service]"                                >>${DEST}
  echo "Type=oneshot"                             >>${DEST}
  echo "RemainAfterExit=true"                     >>${DEST}
  echo "ExecStart=/usr/bin/nvmecache.sh"          >>${DEST}
  echo                                            >>${DEST}
  echo "[Install]"                                >>${DEST}
  echo "WantedBy=multi-user.target"               >>${DEST}

  mkdir -vp /tmpRoot/lib/systemd/system/multi-user.target.wants
  ln -vsf /usr/lib/systemd/system/nvmecache.service /tmpRoot/lib/systemd/system/multi-user.target.wants/nvmecache.service
fi
