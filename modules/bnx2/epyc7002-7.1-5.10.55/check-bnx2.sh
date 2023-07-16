#
# Checking modules is loaded
#

echo -n "Loading module bnx2 -> "
[ `/sbin/lsmod | grep -i bnx2 | wc -l` -gt 0 ] && echo "Module bnx2 loaded succesfully" || echo "Module bnx2 is not loaded"
