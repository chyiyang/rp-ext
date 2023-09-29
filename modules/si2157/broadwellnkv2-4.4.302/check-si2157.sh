#
# Checking modules is loaded
#

echo -n "Loading module si2157 -> "
[ `/sbin/lsmod | grep -i si2157 | wc -l` -gt 0 ] && echo "Module si2157 loaded succesfully" || echo "Module si2157 is not loaded"
