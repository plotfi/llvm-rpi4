# Make sure to set the RPI4_SYSROOT and LLVM_INSTALL_ROOT.
set(CMAKE_SYSROOT ${RPI4_SYSROOT} CACHE STRING "")
set(LLVM_ROOT ${LLVM_INSTALL_ROOT} CACHE STRING "")

set(target_triple aarch64-unknown-linux-gnu)
set(CMAKE_C_COMPILER_TARGET ${target_triple} CACHE STRING "")
set(CMAKE_CXX_COMPILER_TARGET ${target_triple} CACHE STRING "")

set(CMAKE_SYSTEM_NAME Linux CACHE STRING "")
set(CMAKE_SYSTEM_PROCESSOR aarch64 CACHE STRING "")

set(CMAKE_SHARED_LINKER_FLAGS "-fuse-ld=lld" CACHE STRING "")
set(CMAKE_MODULE_LINKER_FLAGS "-fuse-ld=lld" CACHE STRING "")
set(CMAKE_EXE_LINKER_FLAGS "-fuse-ld=lld" CACHE STRING "")

set(CMAKE_C_FLAGS "-save-temps" CACHE STRING "")
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -stdlib=libc++" CACHE STRING "")

set(CMAKE_C_COMPILER "${LLVM_INSTALL_ROOT}/bin/clang" CACHE STRING "")
set(CMAKE_CXX_COMPILER "${LLVM_INSTALL_ROOT}/bin/clang++" CACHE STRING "")
set(CMAKE_AR "${LLVM_INSTALL_ROOT}/bin/llvm-ar" CACHE STRING "")
