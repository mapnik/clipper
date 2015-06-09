#!/usr/bin/env bash

export ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

perl -i -p -e "s/\.X/\.x/g;" ${ROOTDIR}/clipper.*
perl -i -p -e "s/\->X/\->x/g;" ${ROOTDIR}/clipper.*
perl -i -p -e "s/cInt X;/cInt x;/g;" ${ROOTDIR}/clipper.*
perl -i -p -e "s/double X;/double x;/g;" ${ROOTDIR}/clipper.*
perl -i -p -e "s/X\(x\)/x\(x\)/g;" ${ROOTDIR}/clipper.*
perl -i -p -e "s/X\(\(/x\(\(/g;" ${ROOTDIR}/clipper.*

perl -i -p -e "s/\.Y/\.y/g;" ${ROOTDIR}/clipper.*
perl -i -p -e "s/\->Y/\->y/g;" ${ROOTDIR}/clipper.*
perl -i -p -e "s/cInt Y;/cInt y;/g;" ${ROOTDIR}/clipper.*
perl -i -p -e "s/double Y;/double y;/g;" ${ROOTDIR}/clipper.*
perl -i -p -e "s/Y\(y\)/y\(y\)/g;" ${ROOTDIR}/clipper.*
perl -i -p -e "s/Y\(\(/y\(\(/g;" ${ROOTDIR}/clipper.*
perl -i -p -e "s/cInt          Y;/cInt          y;/g;" ${ROOTDIR}/clipper.*


