#!/bin/bash

rm descq

gcc -w -Wno-format -o descq descq.c -l curl -Wno-deprecated-declarations -Wno-format-security -lm `pkg-config --cflags --libs gtk+-3.0 glib-2.0` -export-dynamic
