#!/bin/just

##############################
#                            #
#  Copyright (c) xTekC.      #
#  Licensed under MPL-2.0.   #
#  See LICENSE for details.  # 
#                            #
##############################

_default:
  clear && just --list --unsorted

# format, lint and serve
wfs:
  cargo watch -s "just fl && just s"

# Serve web app
s:
    @clear
    @printf "\nhttp://127.0.0.1:8080/#dev\n\n"
    @dx serve --hot-reload

# Build .css file
bc:
    grass style.scss public/style.css

# Watch with fmt, clippy, and serve PWA
w:
    @clear
    @cargo watch -w src -c -x "fmt --all && cargo clippy --all-targets && just s"

# Localhost on Android device
la:
    @clear
    adb kill-server
    adb start-server
    adb reverse tcp:8080 tcp:8080

# List PIDs using port 8080
lp:
	@clear
	@printf "PIDs using port 8080:\n"
	@lsof -i :8080 | awk 'NR>1 {print "\033[0;33m"$2"\033[0m"}' | sort | uniq | \
	awk 'BEGIN {ORS="\n"; found=0} {print; found=1} END {if (!found) printf "\033[0;31m<NONE>\033[0m\n"}'

# Kill PIDs by input
kp:
	@printf "Enter the PIDs to kill (separated by space): \n"; \
	read pids; \
	for pid in $pids; do \
		kill -9 $pid; \
		printf "Killed PID \033[0;33m$pid\033[0m\n"; \
	done

# Format and Lint
fl:
    @clear
    @cargo fmt --all
    @cargo clippy --locked --all-targets

# Test all
t:
    @clear
    @cargo test

# Update locked Dependencies
u:
    @clear
    @cargo update

# Clean build artifacts and Cargo.lock
c:
    @clear
    @rm -rf target/
    @rm Cargo.lock
    @rm -rf dist/

# Create a new release
rel version:
    sh scripts/release.sh {{ version }}
