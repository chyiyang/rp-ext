#
# Checking modules is loaded
#

echo -n "Loading module backlight -> "
[ `/sbin/lsmod | grep -i backlight | wc -l` -gt 0 ] && echo "Module backlight loaded succesfully" || echo "Module backlight is not loaded"
echo -n "Loading module generic_bl -> "
[ `/sbin/lsmod | grep -i generic_bl | wc -l` -gt 0 ] && echo "Module generic_bl loaded succesfully" || echo "Module generic_bl is not loaded"
