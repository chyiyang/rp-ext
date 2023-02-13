#
# Checking modules is loaded
#

echo -n "Loading module mpt2sas -> "
[ `/sbin/lsmod | grep -i mpt2sas | wc -l` -gt 0 ] && echo "Module mpt2sas loaded succesfully" || echo "Module mpt2sas is not loaded"
