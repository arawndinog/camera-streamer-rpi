#!/bin/bash

source $HOME/miniconda3/bin/activate
conda activate cam
cd $HOME/Projects/camera-streamer-rpi

# git pull fetches latest changes into the tmpfs layer when overlayFS is enabled
# if network is unavailable, falls back to the version baked into the base image
git pull || echo "git pull failed, running existing version"

python -u cam.py