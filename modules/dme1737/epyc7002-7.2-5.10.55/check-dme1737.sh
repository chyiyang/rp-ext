#
# Checking modules is loaded
#

echo -n "Loading module hwmon-vid -> "
[ `/sbin/lsmod | grep -i hwmon-vid | wc -l` -gt 0 ] && echo "Module hwmon-vid loaded succesfully" || echo "Module hwmon-vid is not loaded"
echo -n "Loading module dme1737 -> "
[ `/sbin/lsmod | grep -i dme1737 | wc -l` -gt 0 ] && echo "Module dme1737 loaded succesfully" || echo "Module dme1737 is not loaded"
