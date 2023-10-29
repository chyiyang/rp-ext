#
# Checking modules is loaded
#

echo -n "Loading module r8125_v9 -> "
[ `/sbin/lsmod | grep -i r8125_v9 | wc -l` -gt 0 ] && echo "Module r8125_v9 loaded succesfully" || echo "Module r8125_v9 is not loaded"
