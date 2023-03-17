#
# Checking modules is loaded
#

echo -n "Loading module nct6775 -> "
[ `/sbin/lsmod | grep -i nct6775 | wc -l` -gt 0 ] && echo "Module nct6775 loaded succesfully" || echo "Module nct6775 is not loaded"
