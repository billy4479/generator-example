# Generator Example

```sh
cmake -S . -B build -G Ninja
cmake --build build
./build/GeneratorExample

# Edit `Resources/data.txt"
cmake --build build
./build/GeneratorExample # It will print the same as before

``` 