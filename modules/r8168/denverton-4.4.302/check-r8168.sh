#
# Checking modules is loaded
#

echo -n "Loading module r8168 -> "
[ `/sbin/lsmod | grep -i r8168 | wc -l` -gt 0 ] && echo "Module r8168 loaded succesfully" || echo "Module r8168 is not loaded"
