#
# Checking modules is loaded
#

echo -n "Loading module realtek -> "
[ `/sbin/lsmod | grep -i realtek | wc -l` -gt 0 ] && echo "Module realtek loaded succesfully" || echo "Module realtek is not loaded"
