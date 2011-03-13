#! /bin/bash
# Stop the TimeCapsule from spinning down when we're running iTunes
if [ -e /Volumes/Data/.mounted ]; then
  if ps aux | grep 'iTunes.app' | grep -v 'grep' >> /dev/null; then
    cp ~/TimeCapsuleSpinner.txt /Volumes/Data/ && rm -f /Volumes/Data/TimeCapsuleSpinner.txt
  fi
fi
