#!/usr/bin/env bash
set -o errexit  # Stop script if any command fails

# 🟢 Update system package list and install dependencies
apt-get update && apt-get install -y build-essential python3-dev

# 🔵 Upgrade pip, setuptools, and wheel (important for building packages)
pip install --upgrade pip setuptools wheel

# 🔴 Explicitly install numpy before other packages (Fixes the error)
pip install --no-cache-dir numpy

# 🟠 Install all other dependencies from requirements.txt
pip install --no-cache-dir -r requirements.txt
