#!/bin/sh

set -e
cd '/home/al/src/others/raylib-scm'

mkdir -p ${DESTDIR}'/var/lib//chicken/11'
install -m 644 '/home/al/src/others/raylib-scm/raylib-scm.static.o' ${DESTDIR}'/var/lib//chicken/11/raylib-scm.o'
install -m 644 '/home/al/src/others/raylib-scm/raylib-scm.link' ${DESTDIR}'/var/lib//chicken/11/raylib-scm.link'

mkdir -p ${DESTDIR}'/var/lib//chicken/11'
rm -f ${DESTDIR}'/var/lib//chicken/11/raylib-scm.so'
install -m 755 '/home/al/src/others/raylib-scm/raylib-scm.so' ${DESTDIR}'/var/lib//chicken/11/raylib-scm.so'

mkdir -p ${DESTDIR}'/var/lib//chicken/11'
rm -f ${DESTDIR}'/var/lib//chicken/11/raylib-scm.import.so'
install -m 755 '/home/al/src/others/raylib-scm/raylib-scm.import.so' ${DESTDIR}'/var/lib//chicken/11/raylib-scm.import.so'

mkdir -p ${DESTDIR}'/var/lib//chicken/11'
rm -f ${DESTDIR}'/var/lib//chicken/11/raylib-scm.egg-info'
cat >${DESTDIR}'/var/lib//chicken/11/raylib-scm.egg-info' <<ENDINFO
((installed-files
   "/var/lib//chicken/11/raylib-scm.o"
   "/var/lib//chicken/11/raylib-scm.link"
   "/var/lib//chicken/11/raylib-scm.so"
   "/var/lib//chicken/11/raylib-scm.import.so")
 (license "GPL-3")
 (category graphics)
 (dependencies
   srfi-1
   srfi-13
   defstruct
   format
   records
   miscmacros
   regex
   vlist
   foreigners)
 (author "Yuriy Al. Shirokov, Anes Lihovac")
 (synopsis "Raylib bindings for Chicken Scheme 5.2")
 (foreign-dependencies "libraylib")
 (components (extension raylib-scm (custom-build "build"))))
ENDINFO
