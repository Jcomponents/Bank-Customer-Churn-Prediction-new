#!/usr/bin/env bash
set -o errexit  # Exit script if any command fails

# 🟢 Update system package list and install required system dependencies
apt-get update && apt-get install -y build-essential python3-dev

# 🔵 Upgrade pip, setuptools, and wheel (important for package builds)
pip install --upgrade pip setuptools wheel

# 🟠 Install numpy first to ensure pandas compiles properly
pip install --no-cache-dir numpy

# 🟡 Install all other dependencies from requirements.txt
pip install --no-cache-dir -r requirements.txt
