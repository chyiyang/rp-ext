#!/bin/bash
echo "Installing synocodec patch"
  cp -vf codecpatch.sh /tmpRoot/usr/bin/codecpatch.sh
  chmod 755 /tmpRoot/usr/bin/codecpatch.sh
  cat > /tmpRoot/usr/lib/systemd/system/codecpatch.service <<'EOF'
[Unit]
Description=Patch synocodectool, by xbl3
Documentation=https://github.com/xbl3/synocodectool-patch
After=multi-user.target
[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/bin/codecpatch.sh
[Install]
WantedBy=multi-user.target
EOF
mkdir -p /tmpRoot/usr/lib/systemd/system/multi-user.target.wants
ln -sf /usr/lib/systemd/system/codecpatch.service /tmpRoot/usr/lib/systemd/system/multi-user.target.wants/codecpatch.service
