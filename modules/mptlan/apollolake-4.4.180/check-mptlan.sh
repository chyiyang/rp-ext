#
# Checking modules is loaded
#

echo -n "Loading module mptbase -> "
[ `/sbin/lsmod | grep -i mptbase | wc -l` -gt 0 ] && echo "Module mptbase loaded succesfully" || echo "Module mptbase is not loaded"
echo -n "Loading module mptlan -> "
[ `/sbin/lsmod | grep -i mptlan | wc -l` -gt 0 ] && echo "Module mptlan loaded succesfully" || echo "Module mptlan is not loaded"
