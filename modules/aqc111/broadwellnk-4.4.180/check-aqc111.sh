#
# Checking modules is loaded
#

echo -n "Loading module aqc111 -> "
[ `/sbin/lsmod | grep -i aqc111 | wc -l` -gt 0 ] && echo "Module aqc111 loaded succesfully" || echo "Module aqc111 is not loaded"
