#
# Checking modules is loaded
#

echo -n "Loading module fb_defio -> "
[ `/sbin/lsmod | grep -i fb_defio | wc -l` -gt 0 ] && echo "Module fb_defio loaded succesfully" || echo "Module fb_defio is not loaded"
