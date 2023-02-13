#
# Checking modules is loaded
#

echo -n "Loading module cfbimgblt -> "
[ `/sbin/lsmod | grep -i cfbimgblt | wc -l` -gt 0 ] && echo "Module cfbimgblt loaded succesfully" || echo "Module cfbimgblt is not loaded"
echo -n "Loading module cfbcopyarea -> "
[ `/sbin/lsmod | grep -i cfbcopyarea | wc -l` -gt 0 ] && echo "Module cfbcopyarea loaded succesfully" || echo "Module cfbcopyarea is not loaded"
echo -n "Loading module cfbfillrect -> "
[ `/sbin/lsmod | grep -i cfbfillrect | wc -l` -gt 0 ] && echo "Module cfbfillrect loaded succesfully" || echo "Module cfbfillrect is not loaded"
echo -n "Loading module fb -> "
[ `/sbin/lsmod | grep -i fb | wc -l` -gt 0 ] && echo "Module fb loaded succesfully" || echo "Module fb is not loaded"
echo -n "Loading module efifb -> "
[ `/sbin/lsmod | grep -i efifb | wc -l` -gt 0 ] && echo "Module efifb loaded succesfully" || echo "Module efifb is not loaded"
