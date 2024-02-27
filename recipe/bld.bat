:: Generate the build files.
cmake . -B build -G"Ninja" %CMAKE_ARGS%      ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%  ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX%     ^
    -DCMAKE_BUILD_TYPE=Release
if errorlevel 1 exit 1

:: Build.
cmake --build build -j %CPU_COUNT%
if errorlevel 1 exit 1

:: Install.
cmake --install .\build
if errorlevel 1 exit 1
