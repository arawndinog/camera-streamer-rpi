#!/bin/bash

source $HOME/miniconda3/bin/activate
conda activate cam
cd $HOME/Projects/camera-streamer-rpi
python -u cam.py

