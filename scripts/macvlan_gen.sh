#!/bin/bash
docker network create -d macvlan --subnet=10.20.0.0/16 --ip-range=10.20.10.0/24 -o parent=eno1 pihole_net