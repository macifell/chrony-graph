#!/bin/bash
# Replace template strings such as THISHOST, for host independence
for i in "$@"
do
  sed -e "s/__THISHOST__/${THISHOST:-this host}/" \
      -e "s/__ACCESS__/${ACCESS:-Public}/" \
    < "$i" > "${i/.IN/}"
done
