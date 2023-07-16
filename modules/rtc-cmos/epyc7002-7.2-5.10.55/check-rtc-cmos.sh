#
# Checking modules is loaded
#

echo -n "Loading module rtc-cmos -> "
[ `/sbin/lsmod | grep -i rtc-cmos | wc -l` -gt 0 ] && echo "Module rtc-cmos loaded succesfully" || echo "Module rtc-cmos is not loaded"
