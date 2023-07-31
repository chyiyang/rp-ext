#
# Checking modules is loaded
#

echo -n "Loading module drm -> "
[ `/sbin/lsmod | grep -i drm | wc -l` -gt 0 ] && echo "Module drm loaded succesfully" || echo "Module drm is not loaded"
echo -n "Loading module fb -> "
[ `/sbin/lsmod | grep -i fb | wc -l` -gt 0 ] && echo "Module fb loaded succesfully" || echo "Module fb is not loaded"
echo -n "Loading module drm_kms_helper -> "
[ `/sbin/lsmod | grep -i drm_kms_helper | wc -l` -gt 0 ] && echo "Module drm_kms_helper loaded succesfully" || echo "Module drm_kms_helper is not loaded"
