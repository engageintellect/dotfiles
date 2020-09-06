#!/bin/bash

echo "Requesting package update."

sudo apt-get update

echo "Requesting upgrade."

sudo apt-get upgrade -y

echo "System has been updated"
