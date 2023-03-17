#
# Checking modules is loaded
#

echo -n "Loading module vgastate -> "
[ `/sbin/lsmod | grep -i vgastate | wc -l` -gt 0 ] && echo "Module vgastate loaded succesfully" || echo "Module vgastate is not loaded"
echo -n "Loading module vga16fb -> "
[ `/sbin/lsmod | grep -i vga16fb | wc -l` -gt 0 ] && echo "Module vga16fb loaded succesfully" || echo "Module vga16fb is not loaded"
