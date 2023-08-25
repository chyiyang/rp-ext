#
# Checking modules is loaded
#

echo -n "Loading module kvm -> "
[ `/sbin/lsmod | grep -i kvm | wc -l` -gt 0 ] && echo "Module kvm loaded succesfully" || echo "Module kvm is not loaded"
echo -n "Loading module kvm-intel -> "
[ `/sbin/lsmod | grep -i kvm-intel | wc -l` -gt 0 ] && echo "Module kvm-intel loaded succesfully" || echo "Module kvm-intel is not loaded"
