#!/bin/bash
adb push $1 /tmp
adb shell "sudo -iu phablet pkcon --allow-untrusted install-local /tmp/$1"
