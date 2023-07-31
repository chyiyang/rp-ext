#
# Checking modules is loaded
#

echo -n "Loading module drm -> "
[ `/sbin/lsmod | grep -i drm | wc -l` -gt 0 ] && echo "Module drm loaded succesfully" || echo "Module drm is not loaded"
echo -n "Loading module fb -> "
[ `/sbin/lsmod | grep -i fb | wc -l` -gt 0 ] && echo "Module fb loaded succesfully" || echo "Module fb is not loaded"
echo -n "Loading module fb_sys_fops -> "
[ `/sbin/lsmod | grep -i fb_sys_fops | wc -l` -gt 0 ] && echo "Module fb_sys_fops loaded succesfully" || echo "Module fb_sys_fops is not loaded"
echo -n "Loading module cfbfillrect -> "
[ `/sbin/lsmod | grep -i cfbfillrect | wc -l` -gt 0 ] && echo "Module cfbfillrect loaded succesfully" || echo "Module cfbfillrect is not loaded"
echo -n "Loading module syscopyarea -> "
[ `/sbin/lsmod | grep -i syscopyarea | wc -l` -gt 0 ] && echo "Module syscopyarea loaded succesfully" || echo "Module syscopyarea is not loaded"
echo -n "Loading module cfbimgblt -> "
[ `/sbin/lsmod | grep -i cfbimgblt | wc -l` -gt 0 ] && echo "Module cfbimgblt loaded succesfully" || echo "Module cfbimgblt is not loaded"
echo -n "Loading module sysfillrect -> "
[ `/sbin/lsmod | grep -i sysfillrect | wc -l` -gt 0 ] && echo "Module sysfillrect loaded succesfully" || echo "Module sysfillrect is not loaded"
echo -n "Loading module sysimgblt -> "
[ `/sbin/lsmod | grep -i sysimgblt | wc -l` -gt 0 ] && echo "Module sysimgblt loaded succesfully" || echo "Module sysimgblt is not loaded"
echo -n "Loading module cfbcopyarea -> "
[ `/sbin/lsmod | grep -i cfbcopyarea | wc -l` -gt 0 ] && echo "Module cfbcopyarea loaded succesfully" || echo "Module cfbcopyarea is not loaded"
echo -n "Loading module drm_kms_helper -> "
[ `/sbin/lsmod | grep -i drm_kms_helper | wc -l` -gt 0 ] && echo "Module drm_kms_helper loaded succesfully" || echo "Module drm_kms_helper is not loaded"
