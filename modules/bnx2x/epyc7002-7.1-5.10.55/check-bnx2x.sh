#
# Checking modules is loaded
#

echo -n "Loading module bnx2x -> "
[ `/sbin/lsmod | grep -i bnx2x | wc -l` -gt 0 ] && echo "Module bnx2x loaded succesfully" || echo "Module bnx2x is not loaded"
