#!/bin/bash

python3 app.py

for i in {1..3}
    do
        if [ $? -eq 1 ]; then
            python3 app.py
            echo ps -ef | grep chrome
        fi
    done