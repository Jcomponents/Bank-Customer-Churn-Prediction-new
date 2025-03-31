#!/usr/bin/env bash
set -o errexit  # Stop script if any command fails

# 🟢 Update system package list and install required system dependencies
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
    python3-setuptools

# 🔵 Upgrade pip, setuptools, and wheel (important for building packages)
pip install --upgrade pip setuptools wheel

# 🔴 Install numpy separately to ensure headers are available before pandas
pip install --no-cache-dir numpy

# 🟠 Install the rest of the dependencies
pip install --no-cache-dir -r requirements.txt
