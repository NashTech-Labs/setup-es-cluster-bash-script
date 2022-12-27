#!/bin/bash

source ./config/nodes.sh

envsubst < config/setup.env.sh > config/setup.sh

bash -x config/setup.sh