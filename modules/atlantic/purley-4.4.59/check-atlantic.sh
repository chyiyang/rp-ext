#
# Checking modules is loaded
#

echo -n "Loading module atlantic -> "
[ `/sbin/lsmod | grep -i atlantic | wc -l` -gt 0 ] && echo "Module atlantic loaded succesfully" || echo "Module atlantic is not loaded"
