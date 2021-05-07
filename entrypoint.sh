#!/bin/sh

watch_packages() {
  watch -t -n 60 tree /home/abuild/packages
}

# See: https://stackoverflow.com/a/50638207/8507637
ABUILD_CONFIG="/home/abuild/.abuild/abuild.conf"
if [ ! -e $ABUILD_CONFIG ]; then
  abuild-keygen -a
  watch_packages
else
  watch_packages
fi

