#
# Checking modules is loaded
#

echo -n "Loading module hid-generic -> "
[ `/sbin/lsmod | grep -i hid-generic | wc -l` -gt 0 ] && echo "Module hid-generic loaded succesfully" || echo "Module hid-generic is not loaded"
