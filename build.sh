#!/bin/bash
#

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUILD_TYPE=$1
TARGET=$2

function usage {
	echo "Build Usage:"
	echo "  build.sh <release|debug> <all|clean>"
	echo "Regenerate Ninja build scripts:"
	echo "  build.sh ninja"
	exit 1
}

if [ "ninja" == "$BUILD_TYPE" ]; then
	echo "Building Ninja scripts"
	mkdir -p "$DIR/_out/Release"
	cd "$DIR/_out/Release"
	cmake -GNinja -D CMAKE_BUILD_TYPE=Release ../..	
	mkdir -p "$DIR/_out/Debug"
	cd "$DIR/_out/Debug"
	cmake -GNinja -D CMAKE_BUILD_TYPE=Debug ../..
	exit 0	
fi

if [ "" == "$BUILD_TYPE" ] || [ "" == "$TARGET" ]; then
	usage
fi

cd "$DIR/_out/$BUILD_TYPE"
ninja $TARGET
