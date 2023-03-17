#
# Checking modules is loaded
#

echo -n "Loading module mptbase -> "
[ `/sbin/lsmod | grep -i mptbase | wc -l` -gt 0 ] && echo "Module mptbase loaded succesfully" || echo "Module mptbase is not loaded"
