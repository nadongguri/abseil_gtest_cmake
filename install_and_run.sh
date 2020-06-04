git clone https://github.com/abseil/abseil-cpp.git
wget https://github.com/google/googletest/archive/release-1.10.0.tar.gz
tar -xzf release-1.10.0.tar.gz
rm release-1.10.0.tar.gz
mkdir build
cd build
cmake ..
make -kj
