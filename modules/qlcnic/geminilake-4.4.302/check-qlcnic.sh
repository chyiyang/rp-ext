#
# Checking modules is loaded
#

echo -n "Loading module qlcnic -> "
[ `/sbin/lsmod | grep -i qlcnic | wc -l` -gt 0 ] && echo "Module qlcnic loaded succesfully" || echo "Module qlcnic is not loaded"
