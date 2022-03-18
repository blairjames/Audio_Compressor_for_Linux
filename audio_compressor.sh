#!/usr/bin/env bash

# sc4m_1916 - Audio Compressor for Linux 
# Path to shared object - /usr/lib/ladspa/sc4m_1916.so

SETTINGS=1,1.5,800,-30,20,10,20

# 1. RMS_Peak 0/1
# 2. Attack 1.5-400
# 3. Release 2-800
# 4. Threshold -30 - 0
# 5. Ratio 1-20
# 6. Knee 1-10
# 7. Makeup Gain 0 - +24

run_commands() {
  pacmd load-module module-ladspa-sink sink_name=compressor plugin=sc4m_1916 label=sc4m control=$SETTINGS
  pacmd set-default-sink compressor

}

main() {
  run_commands;
}

main;
