#!/bin/bash

wget https://bitbucket.org/LLlnak/docker-training/raw/7742ac5b71c094c8232eff3e06cb9df0d7208fc7/playbook.yml

docker run -d --rm --name play alpine-ansible-2.6 sleep 30
docker cp playbook.yml play:/home
docker exec -it play ansible-playbook /home/playbook.yml

docker run -d --rm --name play alpine-ansible-2.7 sleep 30
docker cp playbook.yml play:/home
docker exec -it play ansible-playbook /home/playbook.yml