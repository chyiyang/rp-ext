#
# Checking modules is loaded
#

echo -n "Loading module softcursor -> "
[ `/sbin/lsmod | grep -i softcursor | wc -l` -gt 0 ] && echo "Module softcursor loaded succesfully" || echo "Module softcursor is not loaded"
echo -n "Loading module fb -> "
[ `/sbin/lsmod | grep -i fb | wc -l` -gt 0 ] && echo "Module fb loaded succesfully" || echo "Module fb is not loaded"
echo -n "Loading module bitblit -> "
[ `/sbin/lsmod | grep -i bitblit | wc -l` -gt 0 ] && echo "Module bitblit loaded succesfully" || echo "Module bitblit is not loaded"
