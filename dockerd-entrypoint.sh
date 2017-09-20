#!/bin/sh

nohup dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=vfs &

sudo -u jenkins jenkins-slave $@

