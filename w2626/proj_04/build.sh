#!/bin/bash

set -e

sudo rm -rf build
cmake -S . -B build
cmake --build build
