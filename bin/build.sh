#!/bin/bash
cd taudio-waa_native
bin/build.sh

cd taudio-waa_flutter/taudio_waa
dart run ffigen --config ffigen.yaml
cd ../..
