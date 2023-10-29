#
# Checking modules is loaded
#

echo -n "Loading module libphy -> "
[ `/sbin/lsmod | grep -i libphy | wc -l` -gt 0 ] && echo "Module libphy loaded succesfully" || echo "Module libphy is not loaded"
echo -n "Loading module realtek -> "
[ `/sbin/lsmod | grep -i realtek | wc -l` -gt 0 ] && echo "Module realtek loaded succesfully" || echo "Module realtek is not loaded"
