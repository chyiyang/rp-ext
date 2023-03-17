#
# Checking modules is loaded
#

echo -n "Loading module efifb -> "
[ `/sbin/lsmod | grep -i efifb | wc -l` -gt 0 ] && echo "Module efifb loaded succesfully" || echo "Module efifb is not loaded"
