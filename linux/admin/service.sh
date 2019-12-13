#!/bin/bash

# check available and running service
service --status-all	# list all services
service <service> status    # check status of specific service
systemctl list-units --type service
systemctl list-unit-files --type service
systemctl status <service>
