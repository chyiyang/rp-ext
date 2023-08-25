#
# Checking modules is loaded
#

echo -n "Loading module qlge -> "
[ `/sbin/lsmod | grep -i qlge | wc -l` -gt 0 ] && echo "Module qlge loaded succesfully" || echo "Module qlge is not loaded"
