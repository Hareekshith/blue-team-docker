#!/bin/bash

# Start SSH daemon
service ssh start

# Start Wazuh agent
/var/ossec/bin/wazuh-control start

# Keep the container running
tail -f /dev/null
