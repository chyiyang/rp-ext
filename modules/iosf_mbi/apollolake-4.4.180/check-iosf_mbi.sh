#
# Checking modules is loaded
#

echo -n "Loading module iosf_mbi -> "
[ `/sbin/lsmod | grep -i iosf_mbi | wc -l` -gt 0 ] && echo "Module iosf_mbi loaded succesfully" || echo "Module iosf_mbi is not loaded"
