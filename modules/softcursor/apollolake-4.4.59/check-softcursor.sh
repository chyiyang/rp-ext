#
# Checking modules is loaded
#

echo -n "Loading module softcursor -> "
[ `/sbin/lsmod | grep -i softcursor | wc -l` -gt 0 ] && echo "Module softcursor loaded succesfully" || echo "Module softcursor is not loaded"
