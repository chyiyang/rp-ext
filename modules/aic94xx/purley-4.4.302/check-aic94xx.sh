#
# Checking modules is loaded
#

echo -n "Loading module aic94xx -> "
[ `/sbin/lsmod | grep -i aic94xx | wc -l` -gt 0 ] && echo "Module aic94xx loaded succesfully" || echo "Module aic94xx is not loaded"
