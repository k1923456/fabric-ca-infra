#!/bin/bash

docker exec rca-org1 \
fabric-ca-client register -d --id.name peer1-org1 --id.secret peer1PW \
--id.affiliation org1 --id.type peer -u https://rca-org1:7054

docker exec rca-org1 \
fabric-ca-client register -d --id.name peer2-org1 --id.secret peer2PW \
--id.affiliation org1 --id.type peer -u https://rca-org1:7054

docker exec rca-org1 \
fabric-ca-client register -d --id.name admin-org1 --id.secret org1AdminPW \
--id.affiliation org1 --id.type admin -u https://rca-org1:7054

docker exec rca-org1 \
fabric-ca-client register -d --id.name user-org1 --id.secret org1UserPW  \
--id.affiliation org1 --id.type user -u https://rca-org1:7054
