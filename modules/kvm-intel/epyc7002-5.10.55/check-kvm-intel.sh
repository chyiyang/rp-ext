#
# Checking modules is loaded
#

echo -n "Loading module kvm-intel -> "
[ `/sbin/lsmod | grep -i kvm-intel | wc -l` -gt 0 ] && echo "Module kvm-intel loaded succesfully" || echo "Module kvm-intel is not loaded"
