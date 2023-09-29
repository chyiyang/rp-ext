#
# Checking modules is loaded
#

echo -n "Loading module mlx_compat -> "
[ `/sbin/lsmod | grep -i mlx_compat | wc -l` -gt 0 ] && echo "Module mlx_compat loaded succesfully" || echo "Module mlx_compat is not loaded"
echo -n "Loading module mlx4_core -> "
[ `/sbin/lsmod | grep -i mlx4_core | wc -l` -gt 0 ] && echo "Module mlx4_core loaded succesfully" || echo "Module mlx4_core is not loaded"
