#this is for system apps
echo '100' > /dev/memcg/system/memory.swappiness
#this is for user applications
echo '50' > /dev/memcg/apps/memory.swappiness
#disable the use of Threads used by zram
echo 0 > /sys/block/zram0/max_comp_streams
#this can reduce pressure on RAM memory
echo 50 > /proc/sys/vm/vfs_cache_pressure
#Set the maximum percentage of RAM that can be used as write cache before forcing writing to disk.
echo 10 > /proc/sys/vm/dirty_ratio
#Limita o percentual da RAM usado antes de iniciar a escrita de cache em segundo plano.
echo 5 > /proc/sys/vm/dirty_background_ratio
#change zram to lz4
echo lz4 > /sys/block/zram0/comp_algorithm
