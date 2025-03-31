#!/usr/bin/env bash
set -o errexit  # Stop script if any command fails

# 🟢 Update system package list and install required dependencies
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
    python3-scipy

# 🔵 Upgrade pip, setuptools, and wheel
pip install --upgrade pip setuptools wheel

# 🔴 Force reinstall numpy to ensure headers exist
pip install --no-cache-dir --force-reinstall numpy

# 🟠 Install other dependencies
pip install --no-cache-dir -r requirements.txt
