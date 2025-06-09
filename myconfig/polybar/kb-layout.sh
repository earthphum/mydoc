#!/bin/bash
xkblayout-state print "%s" | tr -d '%' | tr 'a-z' 'A-Z' | cut -c1-2

