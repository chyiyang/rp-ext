#
# Checking modules is loaded
#

echo -n "Loading module cfbcopyarea -> "
[ `/sbin/lsmod | grep -i cfbcopyarea | wc -l` -gt 0 ] && echo "Module cfbcopyarea loaded succesfully" || echo "Module cfbcopyarea is not loaded"
