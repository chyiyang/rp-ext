#
# Checking modules is loaded
#

echo -n "Loading module libiscsi -> "
[ `/sbin/lsmod | grep -i libiscsi | wc -l` -gt 0 ] && echo "Module libiscsi loaded succesfully" || echo "Module libiscsi is not loaded"
