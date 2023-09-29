#
# Checking modules is loaded
#

echo -n "Loading module rc-core -> "
[ `/sbin/lsmod | grep -i rc-core | wc -l` -gt 0 ] && echo "Module rc-core loaded succesfully" || echo "Module rc-core is not loaded"
