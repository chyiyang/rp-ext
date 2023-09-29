#
# Checking modules is loaded
#

echo -n "Loading module vgastate -> "
[ `/sbin/lsmod | grep -i vgastate | wc -l` -gt 0 ] && echo "Module vgastate loaded succesfully" || echo "Module vgastate is not loaded"
