#
# Checking modules is loaded
#

echo -n "Loading module agpgart -> "
[ `/sbin/lsmod | grep -i agpgart | wc -l` -gt 0 ] && echo "Module agpgart loaded succesfully" || echo "Module agpgart is not loaded"
