
# Fix Nvidia problem, if exist (see info below)
# ldconfig: /usr/lib/wsl/lib/libcuda.so.1 is not a symbolic link
# https://forums.developer.nvidia.com/t/wsl2-libcuda-so-and-libcuda-so-1-should-be-symlink/236301
# https://github.com/microsoft/WSL/issues/11229

if [ -e "/usr/lib/wsl/lib/libcuda.so.1" ]; then
   if [ ! -L "/usr/lib/wsl/lib/libcuda.so.1" ]; then
      if [ -f "/usr/lib/wsl/lib/libcuda.so.1.1" ]; then
	     pushd /usr/lib/wsl/lib
		 rm libcuda.so libcuda.so.1
		 ln -s libcuda.so.1.1 libcuda.so.1
		 ln -s libcuda.so.1 libcuda.so
		 ldconfig
		 popd
	  fi
   fi
fi
