#
# Checking modules is loaded
#

echo -n "Loading module bnx2x_mod -> "
[ `/sbin/lsmod | grep -i bnx2x_mod | wc -l` -gt 0 ] && echo "Module bnx2x_mod loaded succesfully" || echo "Module bnx2x_mod is not loaded"
