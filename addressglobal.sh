#!/bin/bash

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    ./address_api.sh;
else
    ./address.sh;
fi