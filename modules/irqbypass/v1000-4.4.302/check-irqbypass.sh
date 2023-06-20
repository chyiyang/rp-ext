#
# Checking modules is loaded
#

echo -n "Loading module irqbypass -> "
[ `/sbin/lsmod | grep -i irqbypass | wc -l` -gt 0 ] && echo "Module irqbypass loaded succesfully" || echo "Module irqbypass is not loaded"
