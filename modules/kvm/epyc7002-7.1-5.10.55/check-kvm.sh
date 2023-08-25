#
# Checking modules is loaded
#

echo -n "Loading module irqbypass -> "
[ `/sbin/lsmod | grep -i irqbypass | wc -l` -gt 0 ] && echo "Module irqbypass loaded succesfully" || echo "Module irqbypass is not loaded"
echo -n "Loading module kvm -> "
[ `/sbin/lsmod | grep -i kvm | wc -l` -gt 0 ] && echo "Module kvm loaded succesfully" || echo "Module kvm is not loaded"
