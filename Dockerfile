# Python support can be specified down to the minor or micro version
# (e.g. 3.6 or 3.6.3).
# OS Support also exists for jessie & stretch (slim and full).
# See https://hub.docker.com/r/library/python/ for all supported Python
# tags from Docker Hub.
FROM nvidia/cuda:latest

# If you prefer miniconda:
#FROM continuumio/miniconda3

LABEL Name=cryptpythoncode Version=0.0.1

WORKDIR /app
ADD . /app

# Clone repository
RUN git clone https://github.com/HighBridgeDragon/CryptPythonCode.git

ENTRYPOINT [ "docker_entry.sh" ]