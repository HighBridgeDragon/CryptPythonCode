#!/bin/bash

# Using pip:
python3 -m pip install -r requirements.txt

pyarmor pack -e " --onefile" ./sampleCode/HelloTensorflow.py

.\sampleCode\dist\HelloTensorflow