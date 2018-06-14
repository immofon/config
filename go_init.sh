#!/bin/bash

# utils
function clone_x() {
	git clone --depth 1 https://github.com/golang/$1.git
	echo -e "\033[32minstalled: $1\033[0m"
}

function clone_x_all() {
	for name in $@
	do
		echo -e "\033[32minstall: $name\033[0m"
		clone_x $name
	done
}

# begin
cd $(go env GOPATH)

mkdir -p src/golang.org/x/
cd src/golang.org/x/

packages="crypto net oauth2 vgo build tools sys mobile review net scratch debug exp image tour playground arch text perf lint time sync"

clone_x_all $packages
