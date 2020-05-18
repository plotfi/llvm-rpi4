# Cross-build and deploy the llvm-test-suite for the RPI4.

Often when making changes to LLVM's aarch64 backend, inorder to get a LGTM to land changes you must build and run llvm's test suite on device. This guide will show how to build clang, llvm, lld, and the aarch64-linux compiler-rt and libc++ runtimes inorder to do this. This guide will standardize on Ubuntu 20.04 LTS for both the cross-building docker environment as well as the device deployment environment (RPI4).

## Step 1

* First things first, install Docker: https://www.docker.com/
* Next, create a directory to share between your host system and the docker image:

```
cd /to/home/directory
mkdir share
```

Next, pull the ubuntu docker repo:

```
docker pull ubuntu
```


