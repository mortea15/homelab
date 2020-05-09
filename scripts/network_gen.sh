#!/bin/bash
docker network create -d bridge --subnet=10.10.0.0/16 --ip-range=10.10.10.0/24 labnet