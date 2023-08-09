#
# Checking modules is loaded
#

echo -n "Loading module libphy -> "
[ `/sbin/lsmod | grep -i libphy | wc -l` -gt 0 ] && echo "Module libphy loaded succesfully" || echo "Module libphy is not loaded"
