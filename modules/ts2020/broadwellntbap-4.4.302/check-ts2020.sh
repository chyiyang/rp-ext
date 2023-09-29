#
# Checking modules is loaded
#

echo -n "Loading module ts2020 -> "
[ `/sbin/lsmod | grep -i ts2020 | wc -l` -gt 0 ] && echo "Module ts2020 loaded succesfully" || echo "Module ts2020 is not loaded"
