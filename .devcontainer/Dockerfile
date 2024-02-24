# Use an official Python runtime as a parent image
# FROM python:3.10-bullseye



# ENTRYPOINT [ "bash" ]

FROM library/python:3.11-bookworm

ARG USER=vscode
ARG DEBIAN_FRONTEND=noninteractive
# RUN apt update \
#     && apt install -y --no-install-recommends sudo \
#     && apt autoremove -y \
#     && rm -rf /var/lib/apt/lists/* \
#     && useradd -m -s /usr/bin/bash ${USER} \
#     && echo "${USER} ALL=(ALL) NOPASSWD: ALL" >/etc/sudoers.d/${USER} \
#     && chmod 0440 /etc/sudoers.d/${USER}

RUN mkdir -p /home/usr/code
# # Set the working directory in the container
WORKDIR /home/usr/code

# !git clone https://github.com/openskynetwork/opensky-api
# cd opensky-api/python/
# !pip install .