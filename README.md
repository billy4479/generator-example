# Generator Example

**FIXED!**

Huge thank you to [DevSolar](https://stackoverflow.com/users/60281/devsolar) from StackOverflow for [his answer](https://stackoverflow.com/a/71906177/13166735).

The original code is on the `master` branch.

---

```sh
cmake -S . -B build -G Ninja
cmake --build build
./build/GeneratorExample

# Edit `Resources/data.txt"
cmake --build build
./build/GeneratorExample # It will print the same as before

``` 