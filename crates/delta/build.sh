#!/bin/bash

# CD to file directory
cd "$(dirname "$0")"
# Build the rust binary
cargo build --release
# Copy the binary to the current directory
cp ../../target/release/revolt-delta ./
# Build the docker image
docker build -t p51_stoat_delta .