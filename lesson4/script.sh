#!/bin/bash

docker build --build-arg ANSIBLE_VERSION=2.6.6 -t alpine-ansible-2.6 .

docker build --build-arg ANSIBLE_VERSION=2.7.7 -t alpine-ansible-2.7 .

docker run -d --rm alpine-ansible-2.6

docker run -d --rm alpine-ansible-2.7



