#
# Checking modules is loaded
#

echo -n "Loading module mlx_compat -> "
[ `/sbin/lsmod | grep -i mlx_compat | wc -l` -gt 0 ] && echo "Module mlx_compat loaded succesfully" || echo "Module mlx_compat is not loaded"
