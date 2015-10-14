#!/bin/bash

grep -q -F '192.168.251.101 client' /etc/hosts || echo '192.168.251.101 client' >> /etc/hosts

