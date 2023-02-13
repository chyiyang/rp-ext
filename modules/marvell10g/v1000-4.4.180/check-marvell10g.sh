#
# Checking modules is loaded
#

echo -n "Loading module marvell10g -> "
[ `/sbin/lsmod | grep -i marvell10g | wc -l` -gt 0 ] && echo "Module marvell10g loaded succesfully" || echo "Module marvell10g is not loaded"
