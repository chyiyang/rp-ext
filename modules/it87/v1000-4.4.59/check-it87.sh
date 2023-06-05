#
# Checking modules is loaded
#

echo -n "Loading module hwmon-vid -> "
[ `/sbin/lsmod | grep -i hwmon-vid | wc -l` -gt 0 ] && echo "Module hwmon-vid loaded succesfully" || echo "Module hwmon-vid is not loaded"
echo -n "Loading module it87 -> "
[ `/sbin/lsmod | grep -i it87 | wc -l` -gt 0 ] && echo "Module it87 loaded succesfully" || echo "Module it87 is not loaded"
