
This repository contains material to build a docker container for the couchpotato application.

Build
=====

'''docker build --tag couchpotato:latest .'''

Run
===

'''docker run --name couchpotato --publish 5050:5050 --detach couchpotato'''

Then navigate to http://localhost:5050/
