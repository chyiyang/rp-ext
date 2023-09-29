#
# Checking modules is loaded
#

echo -n "Loading module fb_sys_fops -> "
[ `/sbin/lsmod | grep -i fb_sys_fops | wc -l` -gt 0 ] && echo "Module fb_sys_fops loaded succesfully" || echo "Module fb_sys_fops is not loaded"
