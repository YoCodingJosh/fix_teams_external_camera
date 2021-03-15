#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root!"
  exit
fi

echo "If it takes a long time, you may need to execute xcode-select --install"

sudo codesign --remove-signature "/Applications/Microsoft Teams.app"

sudo codesign --remove-signature "/Applications/Microsoft Teams.app/Contents/Frameworks/Microsoft Teams Helper.app"

sudo codesign --remove-signature "/Applications/Microsoft Teams.app/Contents/Frameworks/Microsoft Teams Helper (GPU).app"

sudo codesign --remove-signature "/Applications/Microsoft Teams.app/Contents/Frameworks/Microsoft Teams Helper (Plugin).app"

sudo codesign --remove-signature "/Applications/Microsoft Teams.app/Contents/Frameworks/Microsoft Teams Helper (Renderer).app"

echo "All done!"

