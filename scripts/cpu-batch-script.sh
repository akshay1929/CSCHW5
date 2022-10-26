
for t in 1 2 4 8 16
   do
   export OMP_NUM_THREADS=$t
   echo .sobel_cpu concurrency $t 
   srun ./sobel_cpu
done