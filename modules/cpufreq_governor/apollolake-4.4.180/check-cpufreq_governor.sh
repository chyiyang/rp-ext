#
# Checking modules is loaded
#

echo -n "Loading module cpufreq_governor -> "
[ `/sbin/lsmod | grep -i cpufreq_governor | wc -l` -gt 0 ] && echo "Module cpufreq_governor loaded succesfully" || echo "Module cpufreq_governor is not loaded"
