#!/bin/bash

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    ./quoteday_api.sh;
else
    ./quoteday.sh;
fi