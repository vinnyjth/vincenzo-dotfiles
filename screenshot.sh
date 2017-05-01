#!/bin/bash

montage "$@" -tile x1 -frame 5 -geometry +5+5 screenshot-collage.png
open screenshot-collage.png
