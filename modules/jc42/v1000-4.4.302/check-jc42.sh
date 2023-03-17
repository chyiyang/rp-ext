#
# Checking modules is loaded
#

echo -n "Loading module jc42 -> "
[ `/sbin/lsmod | grep -i jc42 | wc -l` -gt 0 ] && echo "Module jc42 loaded succesfully" || echo "Module jc42 is not loaded"
