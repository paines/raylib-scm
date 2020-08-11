#!/bin/sh

set -e
PATH='/usr/bin':$PATH
export CHICKEN_CC='x86_64-linux-gnu-gcc'
export CHICKEN_CXX='x86_64-linux-gnu-g++'
export CHICKEN_CSC='/usr/bin/csc'
export CHICKEN_CSI='/usr/bin/csi'
cd '/home/al/src/others/raylib-scm'
chmod +x '/home/al/src/others/raylib-scm/build'

'/usr/bin/chicken-do' '/home/al/src/others/raylib-scm/raylib-scm.so' '/home/al/src/others/raylib-scm/raylib-scm.import.scm' : 'raylib-scm.scm' '/home/al/src/others/raylib-scm/raylib-scm.egg' '/home/al/src/others/raylib-scm/build'   : '/home/al/src/others/raylib-scm/build' -host -D compiling-extension -J -s -regenerate-import-libraries -setup-mode -I /home/al/src/others/raylib-scm -C -I/home/al/src/others/raylib-scm '-O2' '-d1' 'raylib-scm.scm'  -o '/home/al/src/others/raylib-scm/raylib-scm.so'
chmod +x '/home/al/src/others/raylib-scm/build'

'/usr/bin/chicken-do' '/home/al/src/others/raylib-scm/raylib-scm.static.o' '/home/al/src/others/raylib-scm/raylib-scm.link' : 'raylib-scm.scm' '/home/al/src/others/raylib-scm/raylib-scm.egg' '/home/al/src/others/raylib-scm/build'  : '/home/al/src/others/raylib-scm/build' -regenerate-import-libraries -setup-mode -static -I /home/al/src/others/raylib-scm -emit-link-file '/home/al/src/others/raylib-scm/raylib-scm.link' -host -D compiling-extension -c -unit raylib-scm -D compiling-static-extension -C -I/home/al/src/others/raylib-scm '-O2' '-d1' 'raylib-scm.scm' -o '/home/al/src/others/raylib-scm/raylib-scm.static.o'

'/usr/bin/chicken-do' '/home/al/src/others/raylib-scm/raylib-scm.import.so' : 'raylib-scm.import.scm' : '/usr/bin/csc' -setup-mode -s -host -I /home/al/src/others/raylib-scm -C -I/home/al/src/others/raylib-scm '-O2' '-d0' 'raylib-scm.import.scm' -o '/home/al/src/others/raylib-scm/raylib-scm.import.so'
