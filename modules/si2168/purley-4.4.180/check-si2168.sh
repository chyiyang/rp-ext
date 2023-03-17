#
# Checking modules is loaded
#

echo -n "Loading module si2168 -> "
[ `/sbin/lsmod | grep -i si2168 | wc -l` -gt 0 ] && echo "Module si2168 loaded succesfully" || echo "Module si2168 is not loaded"
