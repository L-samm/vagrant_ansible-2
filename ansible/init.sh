#!/bin/bash

set -e

echo "Starting vm1 and vm2"
vagrant up vm1 vm2 --provision

vagrant up vm3 --provision

echo "All VMs started and provisioned in order."
