# Experimenting with hardware on raspberry pi

## What is this?
Cross compiling to Raspberry pi 4 from Macbook Air M2

## Setup

#### Add target 
```sh
rustup target add armv7-unknown-linux-musleabihf
```

#### Add linker 
```sh
brew install arm-linux-gnueabihf-binutils
```

#### Add config
In the file `.cargo/config` (that you might have to create):
```
[build]
target = "armv7-unknown-linux-musleabihf"

[target.armv7-unknown-linux-musleabihf]
linker = "arm-linux-gnueabihf-ld"
```


