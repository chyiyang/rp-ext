#
# Checking modules is loaded
#

echo -n "Loading module nvidia -> "
[ `/sbin/lsmod | grep -i nvidia | wc -l` -gt 0 ] && echo "Module nvidia loaded succesfully" || echo "Module nvidia is not loaded"
echo -n "Loading module nvidia-uvm -> "
[ `/sbin/lsmod | grep -i nvidia-uvm | wc -l` -gt 0 ] && echo "Module nvidia-uvm loaded succesfully" || echo "Module nvidia-uvm is not loaded"
