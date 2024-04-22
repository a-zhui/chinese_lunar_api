#!/bin/bash

#toilet -f mono12  -F gay -t 'Chinese Lunar'

uvicorn --host 0.0.0.0 --port 7860 api:api
