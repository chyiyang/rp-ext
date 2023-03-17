#
# Checking modules is loaded
#

echo -n "Loading module atkbd -> "
[ `/sbin/lsmod | grep -i atkbd | wc -l` -gt 0 ] && echo "Module atkbd loaded succesfully" || echo "Module atkbd is not loaded"
