export OMP_PLACES=threads
export OMP_PROC_BIND=spread
for t in 1 2 4 8 16
   do
   export OMP_NUM_THREADS=$t
   echo .sobel_cpu concurrency $t 
   ./sobel_cpu
done