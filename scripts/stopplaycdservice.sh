#!/bin/bash

logger stopplaycdservice.sh: stopping user service with USERNAME="$USER"

# Stop cd player service as the user given during install
sudo -u "$USER" XDG_RUNTIME_DIR=/run/user/$(id -u $USER) systemctl --user stop playcdoninsert.service
