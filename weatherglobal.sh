#!/bin/bash

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    ./weather_api.sh;
else
    ./weather.sh;
fi