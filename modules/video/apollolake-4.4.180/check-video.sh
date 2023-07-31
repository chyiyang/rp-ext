#
# Checking modules is loaded
#

echo -n "Loading module backlight -> "
[ `/sbin/lsmod | grep -i backlight | wc -l` -gt 0 ] && echo "Module backlight loaded succesfully" || echo "Module backlight is not loaded"
echo -n "Loading module video -> "
[ `/sbin/lsmod | grep -i video | wc -l` -gt 0 ] && echo "Module video loaded succesfully" || echo "Module video is not loaded"
