#
# Checking modules is loaded
#

echo -n "Loading module auxiliary -> "
[ `/sbin/lsmod | grep -i auxiliary | wc -l` -gt 0 ] && echo "Module auxiliary loaded succesfully" || echo "Module auxiliary is not loaded"
echo -n "Loading module i40e -> "
[ `/sbin/lsmod | grep -i i40e | wc -l` -gt 0 ] && echo "Module i40e loaded succesfully" || echo "Module i40e is not loaded"
