#!/bin/sh

RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

for dir in $(find . -name Makefile -exec dirname {} \;); do
    echo -e "${RED}Cleaning in ${YELLOW}$dir${NC}"
    (cd "$dir" && make fclean > /dev/null 2>&1)
done
