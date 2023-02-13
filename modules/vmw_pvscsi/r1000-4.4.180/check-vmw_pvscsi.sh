#
# Checking modules is loaded
#

echo -n "Loading module vmw_pvscsi -> "
[ `/sbin/lsmod | grep -i vmw_pvscsi | wc -l` -gt 0 ] && echo "Module vmw_pvscsi loaded succesfully" || echo "Module vmw_pvscsi is not loaded"
