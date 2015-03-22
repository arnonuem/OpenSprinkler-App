#!/bin/bash

cd build/firmware

if [ $1 == "start" ]; then
	git clone https://github.com/opensprinkler/opensprinklergen2 unified
	cd unified
	./build_demo.sh
	./OpenSprinkler &
	echo $! > pid
else
	kill -9 `cat unified/pid`
	rm unified/pid
fi
