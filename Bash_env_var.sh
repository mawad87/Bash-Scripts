#!/bin/bash

case $BASH_VERSION in
    [12].*) echo "You need at least bash3.0 to run this script" >&2; exit 2;;
esac
