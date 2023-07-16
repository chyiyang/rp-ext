#
# Checking modules is loaded
#

echo -n "Loading module cfbfillrect -> "
[ `/sbin/lsmod | grep -i cfbfillrect | wc -l` -gt 0 ] && echo "Module cfbfillrect loaded succesfully" || echo "Module cfbfillrect is not loaded"
