#
# Checking modules is loaded
#

echo -n "Loading module sysfillrect -> "
[ `/sbin/lsmod | grep -i sysfillrect | wc -l` -gt 0 ] && echo "Module sysfillrect loaded succesfully" || echo "Module sysfillrect is not loaded"
