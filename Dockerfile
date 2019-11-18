# Python support can be specified down to the minor or micro version
# (e.g. 3.6 or 3.6.3).
# OS Support also exists for jessie & stretch (slim and full).
# See https://hub.docker.com/r/library/python/ for all supported Python
# tags from Docker Hub.
FROM tensorflow/tensorflow:1.14.0-gpu-py3

LABEL Name=cryptpythoncode Version=0.0.1

WORKDIR /app
ADD . /app

RUN apt update && \
    apt install git -y

# Clone repository
RUN git clone https://github.com/HighBridgeDragon/CryptPythonCode.git

RUN python3 -m pip install -r requirement.txt
