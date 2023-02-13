#
# Checking modules is loaded
#

echo -n "Loading module megaraid_mm -> "
[ `/sbin/lsmod | grep -i megaraid_mm | wc -l` -gt 0 ] && echo "Module megaraid_mm loaded succesfully" || echo "Module megaraid_mm is not loaded"
