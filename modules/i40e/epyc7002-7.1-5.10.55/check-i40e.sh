#
# Checking modules is loaded
#

echo -n "Loading module intel_auxiliary -> "
[ `/sbin/lsmod | grep -i intel_auxiliary | wc -l` -gt 0 ] && echo "Module intel_auxiliary loaded succesfully" || echo "Module intel_auxiliary is not loaded"
echo -n "Loading module i40e -> "
[ `/sbin/lsmod | grep -i i40e | wc -l` -gt 0 ] && echo "Module i40e loaded succesfully" || echo "Module i40e is not loaded"
