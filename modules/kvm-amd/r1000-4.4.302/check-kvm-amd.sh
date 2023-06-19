#
# Checking modules is loaded
#

echo -n "Loading module kvm -> "
[ `/sbin/lsmod | grep -i kvm | wc -l` -gt 0 ] && echo "Module kvm loaded succesfully" || echo "Module kvm is not loaded"
echo -n "Loading module kvm-amd -> "
[ `/sbin/lsmod | grep -i kvm-amd | wc -l` -gt 0 ] && echo "Module kvm-amd loaded succesfully" || echo "Module kvm-amd is not loaded"
