#
# Checking modules is loaded
#

echo -n "Loading module syscopyarea -> "
[ `/sbin/lsmod | grep -i syscopyarea | wc -l` -gt 0 ] && echo "Module syscopyarea loaded succesfully" || echo "Module syscopyarea is not loaded"
