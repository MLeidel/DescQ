#!/bin/bash

rm descqx

gcc -w -Wno-format -o descqx descqx.c -l curl -Wno-deprecated-declarations -Wno-format-security -lm `pkg-config --cflags --libs gtk+-3.0 glib-2.0` -export-dynamic
