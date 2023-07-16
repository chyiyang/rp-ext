#
# Checking modules is loaded
#

echo -n "Loading module intel_auxiliary -> "
[ `/sbin/lsmod | grep -i intel_auxiliary | wc -l` -gt 0 ] && echo "Module intel_auxiliary loaded succesfully" || echo "Module intel_auxiliary is not loaded"
echo -n "Loading module iavf -> "
[ `/sbin/lsmod | grep -i iavf | wc -l` -gt 0 ] && echo "Module iavf loaded succesfully" || echo "Module iavf is not loaded"
