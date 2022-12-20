# Experimenting with hardware on raspberry pi

## What is this?
* Cross compiling to Raspberry pi 4 from Macbook Air M2
* Interacting with gpio

## Setup

#### Add target 
```sh
rustup target add armv7-unknown-linux-musleabihf
```

#### Add linker 
```sh
brew install arm-linux-gnueabihf-binutils
```

## Verify
```
cargo check
```

## Compile, deploy and run
```
./deploy.sh
```

### Resources

* [Physical Computing With Rust](https://rahul-thakoor.github.io/physical-computing-rust/step_0.html)
* https://sigmaris.info/blog/2019/02/cross-compiling-rust-on-mac-os-for-an-arm-linux-router/
* https://medium.com/swlh/compiling-rust-for-raspberry-pi-arm-922b55dbb050


