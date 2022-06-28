## Building the Keyple components

### C++ components

#### Prerequisites
Here are the prerequisites to build the keyple components (dynamic libraries)
- G++ 6 and higher, MSVC++ 14 (other compilers untested)
- libpcsclite1 package installed (Linux) to build the PC/SC plugin

#### Windows, Linux or Macos
On Linux and macOS, the following commands will build all the artifacts at once
```
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../toolchain/<toolchain>.cmake ..
make
```
