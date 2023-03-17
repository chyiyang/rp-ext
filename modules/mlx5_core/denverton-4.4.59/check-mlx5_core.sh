#
# Checking modules is loaded
#

echo -n "Loading module mlx5_core -> "
[ `/sbin/lsmod | grep -i mlx5_core | wc -l` -gt 0 ] && echo "Module mlx5_core loaded succesfully" || echo "Module mlx5_core is not loaded"
