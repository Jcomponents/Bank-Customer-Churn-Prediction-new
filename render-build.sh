#!/usr/bin/env bash
set -o errexit  # Exit script on error

# 🟢 Update package lists and install necessary system dependencies
apt-get update && apt-get install -y \
    build-essential \
    python3-dev \
    python3-pip \
    python3-venv \
    gcc \
    g++ \
    libffi-dev \
    libssl-dev \
    libblas-dev \
    liblapack-dev \
    libatlas-base-dev \
    gfortran \
    python3-setuptools \
    python3-numpy \
    python3-scipy \
    python3-pandas  # Ensure pandas dependencies are installed

# 🔵 Upgrade pip, setuptools, and wheel
pip install --upgrade pip setuptools wheel

# 🔴 Force reinstall numpy **before installing anything else**
pip uninstall -y numpy
pip install --no-cache-dir numpy

# 🟠 Now install the rest of the dependencies
pip install --no-cache-dir -r requirements.txt
