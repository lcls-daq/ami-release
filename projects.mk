# List of projects (low level first)

#
#  Determine which packages are in this release
#
rprojects := $(wildcard *)

#
#  List external package base directories for convenience
#
epics_use      := /reg/common/package/epicsca/3.14.12
evgr_use       := /reg/g/pcds/package/external/evgr_V00-00-05
qt_use         := /reg/common/package/qt/4.8.4
qwt_use        := /reg/g/pcds/package/external/qwt-5.1.1-wfopt-logfix
python_use     := /reg/common/package/python/2.5.5
python3_use    := /reg/common/package/python/3.6.1
libraw1394_use := /reg/g/pcds/package/external/libdc1394
libdc1394_use  := /reg/g/pcds/package/external/libdc1394
offlinedb_use  := /reg/g/pcds/package/external/offlinedb-1.5.1
edt_use        := /reg/g/pcds/package/external/edt
leutron_use    := /reg/g/pcds/package/external/leutron_V00-00-00
fli_use        := /reg/g/pcds/package/external/fli-dist-1.71
andor_use      := /reg/g/pcds/package/external/andor-2.95.30003.0
libusb_use     := /reg/g/pcds/package/external/libusb-1.0.0
usdusb4_use    := /reg/g/pcds/package/external/usdusb4
acqiris_use    := /reg/g/pcds/package/external/acqiris_3.3a
relaxd_use     := /reg/g/pcds/package/external/relaxd-1.9.9
pvcam_use      := /reg/g/pcds/package/external/pvcam2.7.1.7
picam_use      := /reg/g/pcds/package/external/picam-2.6.1
gsl_use        := /reg/g/pcds/package/external/gsl-1.13
boost_use      := /reg/g/pcds/pkg_mgr/release/boost/1.63.0
ndarray_use    := /reg/common/package/ndarray/1.1.8
psalg_use      := /reg/common/package/psalg/1.0.11
pdsdata_use    := /reg/common/package/pdsdata/9.1.0

#
#  *_use_include definitions will create a directory structure under build for
#    external packages which don't already have the needed structure.  The
#    *_use_lib_i386 will create the lib/ structure with soft-links to the
#    variable reference for i386-linux-*.  The *_use_lib_x86_64 will create the
#    analogous soft-links for x86_64-linux-* libraries.
#  Packages without a *_use_include definition will just have a soft-link under build.
#
boost_use_include    := $(boost_use)/linux-x86_64/include
boost_use_lib_x86_64 := $(boost_use)/linux-x86_64/lib
boost_use_lib_rhel6  := $(boost_use)/rhel6-x86_64/lib
boost_use_lib_rhel7  := $(boost_use)/rhel7-x86_64/lib

ndarray_use_include := $(ndarray_use)

psalg_use_include:= $(psalg_use)/x86_64-linux-opt
psalg_use_i386   := $(psalg_use)/i386-linux
psalg_use_x86_64 := $(psalg_use)/x86_64-linux
psalg_use_rhel6  := $(psalg_use)/x86_64-rhel6
psalg_use_rhel7  := $(psalg_use)/x86_64-rhel7

pdsdata_use_include:= $(pdsdata_use)/x86_64-rhel7-opt
pdsdata_use_i386   := $(pdsdata_use)/i386-linux
pdsdata_use_x86_64 := $(pdsdata_use)/x86_64-linux
pdsdata_use_rhel6  := $(pdsdata_use)/x86_64-rhel6
pdsdata_use_rhel7  := $(pdsdata_use)/x86_64-rhel7

projects :=

projects += \
      pdsdata \
      boost \
      ndarray \
      qwt \
      psalg \
      python \
      python3 \
      epics \
      qt

timetool_use            := /reg/g/pcds/dist/pds/10.2.0-p9.1.0/build/timetool
timetool_use_include    := $(timetool_use)/include
timetool_use_lib_x86_64 := $(timetool_use)/lib/x86_64-linux-opt
timetool_use_lib_rhel6  := $(timetool_use)/lib/x86_64-rhel6-opt
timetool_use_lib_rhel7  := $(timetool_use)/lib/x86_64-rhel7-opt

projects += timetool

projects += gsl ami
ami_use := release

