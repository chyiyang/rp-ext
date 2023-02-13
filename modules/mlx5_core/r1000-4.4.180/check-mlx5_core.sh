#
# Checking modules is loaded
#

echo -n "Loading module mlx_compat -> "
[ `/sbin/lsmod | grep -i mlx_compat | wc -l` -gt 0 ] && echo "Module mlx_compat loaded succesfully" || echo "Module mlx_compat is not loaded"
echo -n "Loading module mlx5_core -> "
[ `/sbin/lsmod | grep -i mlx5_core | wc -l` -gt 0 ] && echo "Module mlx5_core loaded succesfully" || echo "Module mlx5_core is not loaded"
