cmake . -B build -G Ninja $CMAKE_ARGS
cmake --build build -j ${CPU_COUNT}
cmake --install build --prefix=$PREFIX --config Release