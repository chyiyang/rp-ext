#
# Checking modules is loaded
#

echo -n "Loading module tg3 -> "
[ `/sbin/lsmod | grep -i tg3 | wc -l` -gt 0 ] && echo "Module tg3 loaded succesfully" || echo "Module tg3 is not loaded"
