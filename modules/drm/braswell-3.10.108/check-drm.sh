#
# Checking modules is loaded
#

echo -n "Loading module agpgart -> "
[ `/sbin/lsmod | grep -i agpgart | wc -l` -gt 0 ] && echo "Module agpgart loaded succesfully" || echo "Module agpgart is not loaded"
echo -n "Loading module fb -> "
[ `/sbin/lsmod | grep -i fb | wc -l` -gt 0 ] && echo "Module fb loaded succesfully" || echo "Module fb is not loaded"
echo -n "Loading module drm -> "
[ `/sbin/lsmod | grep -i drm | wc -l` -gt 0 ] && echo "Module drm loaded succesfully" || echo "Module drm is not loaded"
