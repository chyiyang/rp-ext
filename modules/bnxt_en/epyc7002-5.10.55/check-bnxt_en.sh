#
# Checking modules is loaded
#

echo -n "Loading module bnxt_en -> "
[ `/sbin/lsmod | grep -i bnxt_en | wc -l` -gt 0 ] && echo "Module bnxt_en loaded succesfully" || echo "Module bnxt_en is not loaded"
