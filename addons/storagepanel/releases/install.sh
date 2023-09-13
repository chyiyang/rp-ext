#!/usr/bin/env sh

if [ $(mount | grep tmpRoot | wc -l) -gt 0 ]; then
  HASBOOTED="yes"
  echo "System passed junior"
else
  echo "System is booting"
  HASBOOTED="no"
fi

if [ "$HASBOOTED" = "yes" ]; then
  echo "Installing daemon for storagepanel"

  cp -fv storagepanel.sh /tmpRoot/usr/bin/storagepanel.sh

  if [ ! -f /tmpRoot/usr/syno/etc/esynoscheduler/esynoscheduler.db ]; then
    echo "copy esynoscheduler.db"
    mkdir -p /tmpRoot/usr/syno/etc/esynoscheduler
    cp -f esynoscheduler.db /tmpRoot/usr/syno/etc/esynoscheduler/esynoscheduler.db
  fi
  echo "insert storagepanel task to esynoscheduler.db"
  export LD_LIBRARY_PATH=/tmpRoot/bin:/tmpRoot/lib
  if ! /tmpRoot/bin/sqlite3 /usr/syno/etc/esynoscheduler/esynoscheduler.db "SELECT * FROM task;" | grep -q 'StoragePanel'; then
  /tmpRoot/bin/sqlite3 /tmpRoot/usr/syno/etc/esynoscheduler/esynoscheduler.db <<EOF
INSERT INTO task VALUES('StoragePanel', '', 'bootup', '', 1, 0, 0, 0, '', 0, '/usr/bin/storagepanel.sh RACK_24_Bay 1X8', 'script', '{}', '', '', '{}', '{}');
EOF
  fi
fi