set(CMAKE_CUDA_COMPILER "/usr/common/software/sles15_cgpu/cuda/11.2.1/bin/nvcc")
set(CMAKE_CUDA_HOST_COMPILER "")
set(CMAKE_CUDA_HOST_LINK_LAUNCHER "/usr/common/software/sles15_cgpu/gcc/8.3.0/bin/g++")
set(CMAKE_CUDA_COMPILER_ID "NVIDIA")
set(CMAKE_CUDA_COMPILER_VERSION "11.2.142")
set(CMAKE_CUDA_DEVICE_LINKER "/usr/common/software/sles15_cgpu/cuda/11.2.1/bin/nvlink")
set(CMAKE_CUDA_FATBINARY "/usr/common/software/sles15_cgpu/cuda/11.2.1/bin/fatbinary")
set(CMAKE_CUDA_STANDARD_COMPUTED_DEFAULT "14")
set(CMAKE_CUDA_EXTENSIONS_COMPUTED_DEFAULT "ON")
set(CMAKE_CUDA_COMPILE_FEATURES "cuda_std_03;cuda_std_11;cuda_std_14;cuda_std_17")
set(CMAKE_CUDA03_COMPILE_FEATURES "cuda_std_03")
set(CMAKE_CUDA11_COMPILE_FEATURES "cuda_std_11")
set(CMAKE_CUDA14_COMPILE_FEATURES "cuda_std_14")
set(CMAKE_CUDA17_COMPILE_FEATURES "cuda_std_17")
set(CMAKE_CUDA20_COMPILE_FEATURES "")
set(CMAKE_CUDA23_COMPILE_FEATURES "")

set(CMAKE_CUDA_PLATFORM_ID "Linux")
set(CMAKE_CUDA_SIMULATE_ID "GNU")
set(CMAKE_CUDA_COMPILER_FRONTEND_VARIANT "")
set(CMAKE_CUDA_SIMULATE_VERSION "8.3")



set(CMAKE_CUDA_COMPILER_ENV_VAR "CUDACXX")
set(CMAKE_CUDA_HOST_COMPILER_ENV_VAR "CUDAHOSTCXX")

set(CMAKE_CUDA_COMPILER_LOADED 1)
set(CMAKE_CUDA_COMPILER_ID_RUN 1)
set(CMAKE_CUDA_SOURCE_FILE_EXTENSIONS cu)
set(CMAKE_CUDA_LINKER_PREFERENCE 15)
set(CMAKE_CUDA_LINKER_PREFERENCE_PROPAGATES 1)

set(CMAKE_CUDA_SIZEOF_DATA_PTR "8")
set(CMAKE_CUDA_COMPILER_ABI "ELF")
set(CMAKE_CUDA_BYTE_ORDER "LITTLE_ENDIAN")
set(CMAKE_CUDA_LIBRARY_ARCHITECTURE "")

if(CMAKE_CUDA_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_CUDA_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_CUDA_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_CUDA_COMPILER_ABI}")
endif()

if(CMAKE_CUDA_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_CUDA_COMPILER_TOOLKIT_ROOT "/usr/common/software/sles15_cgpu/cuda/11.2.1")
set(CMAKE_CUDA_COMPILER_TOOLKIT_LIBRARY_ROOT "/usr/common/software/sles15_cgpu/cuda/11.2.1")
set(CMAKE_CUDA_COMPILER_LIBRARY_ROOT "/usr/common/software/sles15_cgpu/cuda/11.2.1")

set(CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES "/usr/common/software/sles15_cgpu/cuda/11.2.1/targets/x86_64-linux/include")

set(CMAKE_CUDA_HOST_IMPLICIT_LINK_LIBRARIES "")
set(CMAKE_CUDA_HOST_IMPLICIT_LINK_DIRECTORIES "/usr/common/software/sles15_cgpu/cuda/11.2.1/targets/x86_64-linux/lib/stubs;/usr/common/software/sles15_cgpu/cuda/11.2.1/targets/x86_64-linux/lib")
set(CMAKE_CUDA_HOST_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")

set(CMAKE_CUDA_IMPLICIT_INCLUDE_DIRECTORIES "/global/common/cori_cle7/software/sles15_cgpu/gcc/8.3.0/include/c++/8.3.0;/global/common/cori_cle7/software/sles15_cgpu/gcc/8.3.0/include/c++/8.3.0/x86_64-pc-linux-gnu;/global/common/cori_cle7/software/sles15_cgpu/gcc/8.3.0/include/c++/8.3.0/backward;/global/common/cori_cle7/software/sles15_cgpu/gcc/8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include;/global/common/cori_cle7/software/sles15_cgpu/gcc/8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/include-fixed;/usr/local/include;/global/common/cori_cle7/software/sles15_cgpu/gcc/8.3.0/include;/usr/include")
set(CMAKE_CUDA_IMPLICIT_LINK_LIBRARIES "stdc++;m;gcc_s;gcc;c;gcc_s;gcc")
set(CMAKE_CUDA_IMPLICIT_LINK_DIRECTORIES "/usr/common/software/sles15_cgpu/cuda/11.2.1/targets/x86_64-linux/lib/stubs;/usr/common/software/sles15_cgpu/cuda/11.2.1/targets/x86_64-linux/lib;/usr/common/software/sles15_cgpu/gcc/8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0;/usr/common/software/sles15_cgpu/gcc/8.3.0/lib/gcc;/usr/common/software/sles15_cgpu/gcc/8.3.0/lib64;/global/common/cori_cle7/software/sles15_cgpu/gcc/8.3.0/lib64;/lib64;/usr/lib64;/usr/common/software/llvm/13_rc3/lib;/global/common/cori_cle7/software/sles15_cgpu/gcc/8.3.0/lib")
set(CMAKE_CUDA_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")

set(CMAKE_CUDA_RUNTIME_LIBRARY_DEFAULT "STATIC")

set(CMAKE_LINKER "/usr/bin/ld")
set(CMAKE_AR "/usr/common/software/llvm/13_rc3/bin/llvm-ar")
set(CMAKE_MT "")
