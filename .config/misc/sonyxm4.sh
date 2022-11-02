#!/usr/bin/env sh

rfkill unblock bluetooth
bluetoothctl power on
bluetoothctl connect 14:3F:A6:CA:3A:66
