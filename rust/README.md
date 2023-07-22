
```sh
rustc main.rs --crate-type=dylib -C opt-level=3 -C debug_assertions=no
rustc --crate-type=dylib -C opt-level=3 -o leibniz-rust main.rs
```
