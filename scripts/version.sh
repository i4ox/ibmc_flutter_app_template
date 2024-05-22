#!/usr/bin/env bash
FLUTTER_REQUIRED_VERSION=3.19.6

fvm use $FLUTTER_REQUIRED_VERSION
fvm install
fvm flutter doctor
fvm flutter clean
fvm flutter pub get
