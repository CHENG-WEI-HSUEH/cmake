#!/bin/bash

set -e

IsInstall() {
	local package="$1"
	if dpkg -s "$package" &> /dev/null; then
		echo "$package has been installed."
	else
		echo "Installing $package"
		sudo apt-get install -y "$package"
	fi
}

echo "Updating package lists..."
if [ -x "$(command -v apt-get)" ]; then
	sudo apt-get update &> /dev/null
	echo "Installing dependencies for Ubuntu..."
	IsInstall "build-essential"
	IsInstall "libssl-dev"
	IsInstall "cmake"
	
else
echo 
	"Unsupported package manager. Please install dependencies manually."
  exit 1
fi

echo "Requirements installed successfully."
