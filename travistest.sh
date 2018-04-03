#!/bin/bash
set -x
set -e

sudo ip link add dummy0 type dummy || true
ip link show dummy0
sudo ip link set up dummy0
ip link show dummy0
sudo ip link set down dummy0
ip link show dummy0
sudo ip link del dummy0
