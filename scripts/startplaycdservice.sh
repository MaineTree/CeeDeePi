#!/bin/bash

logger startplaycdservice.sh: starting user service with USERNAME="$USER"

# Start cd player service as the user given during install
sudo -u "$USER" XDG_RUNTIME_DIR=/run/user/$(id -u $USER) systemctl --user start playcdoninsert.service
