#!/usr/bin/env sh

rfkill unblock bluetooth
sleep 3
bluetoothctl power on
sleep 3
bluetoothctl connect 14:3F:A6:CA:3A:66
