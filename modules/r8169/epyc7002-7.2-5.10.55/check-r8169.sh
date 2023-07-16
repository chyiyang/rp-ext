#
# Checking modules is loaded
#

echo -n "Loading module r8169 -> "
[ `/sbin/lsmod | grep -i r8169 | wc -l` -gt 0 ] && echo "Module r8169 loaded succesfully" || echo "Module r8169 is not loaded"
