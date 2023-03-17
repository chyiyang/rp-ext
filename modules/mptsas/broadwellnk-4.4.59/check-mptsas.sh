#
# Checking modules is loaded
#

echo -n "Loading module mptscsih -> "
[ `/sbin/lsmod | grep -i mptscsih | wc -l` -gt 0 ] && echo "Module mptscsih loaded succesfully" || echo "Module mptscsih is not loaded"
echo -n "Loading module mptbase -> "
[ `/sbin/lsmod | grep -i mptbase | wc -l` -gt 0 ] && echo "Module mptbase loaded succesfully" || echo "Module mptbase is not loaded"
echo -n "Loading module mptsas -> "
[ `/sbin/lsmod | grep -i mptsas | wc -l` -gt 0 ] && echo "Module mptsas loaded succesfully" || echo "Module mptsas is not loaded"
