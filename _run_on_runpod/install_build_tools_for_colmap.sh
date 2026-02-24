#!/usr/bin/env bash
set -euo pipefail

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y --no-install-recommends \
  build-essential \
  ninja-build \
  cmake \
  pkg-config \
  git \
  ca-certificates \
  libboost-filesystem-dev \
  libboost-graph-dev \
  libboost-program-options-dev \
  libboost-regex-dev \
  libboost-system-dev \
  libboost-test-dev \
  libeigen3-dev \
  libfreeimage-dev \
  libgoogle-glog-dev \
  libglew-dev \
  libsqlite3-dev \
  libceres-dev \
  libsuitesparse-dev \
  qtbase5-dev \
  libqt5opengl5-dev \
  libcgal-dev \
  libatlas-base-dev

rm -rf /var/lib/apt/lists/*

echo "Build tools for COLMAP installed."
