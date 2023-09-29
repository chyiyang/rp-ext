#
# Checking modules is loaded
#

echo -n "Loading module megaraid_sas -> "
[ `/sbin/lsmod | grep -i megaraid_sas | wc -l` -gt 0 ] && echo "Module megaraid_sas loaded succesfully" || echo "Module megaraid_sas is not loaded"
