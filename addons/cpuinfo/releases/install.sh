#!/bin/bash
echo "Installing daemon for CPU Info"
  cp -vf cpuinfo.sh /tmpRoot/usr/bin/cpuinfo.sh
  chmod 755 /tmpRoot/usr/bin/cpuinfo.sh
  cat > /tmpRoot/usr/lib/systemd/system/cpuinfo.service <<'EOF'
[Unit]
Description=Adds correct CPU Info, from FOXBI
After=multi-user.target
[Service]
Type=oneshot
RemainAfterExit=true
ExecStart=/usr/bin/cpuinfo.sh
[Install]
WantedBy=multi-user.target  
EOF
mkdir -p /tmpRoot/usr/lib/systemd/system/multi-user.target.wants
ln -sf /usr/lib/systemd/system/cpuinfo.service /tmpRoot/usr/lib/systemd/system/multi-user.target.wants/cpuinfo.service
