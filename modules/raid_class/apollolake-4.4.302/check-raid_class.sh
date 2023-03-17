#
# Checking modules is loaded
#

echo -n "Loading module raid_class -> "
[ `/sbin/lsmod | grep -i raid_class | wc -l` -gt 0 ] && echo "Module raid_class loaded succesfully" || echo "Module raid_class is not loaded"
