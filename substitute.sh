#!/bin/bash
# Replace template strings such as THISHOST, for host independence
for i in "$@"
do
  sed -e "s/THISHOST/${THISHOST:-this host}/" < "$i" > "${i/.IN/}"
done
