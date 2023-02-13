#
# Checking modules is loaded
#

echo -n "Loading module mlx5_core -> "
[ `/sbin/lsmod | grep -i mlx5_core | wc -l` -gt 0 ] && echo "Module mlx5_core loaded succesfully" || echo "Module mlx5_core is not loaded"
echo -n "Loading module mlx5_ib -> "
[ `/sbin/lsmod | grep -i mlx5_ib | wc -l` -gt 0 ] && echo "Module mlx5_ib loaded succesfully" || echo "Module mlx5_ib is not loaded"
