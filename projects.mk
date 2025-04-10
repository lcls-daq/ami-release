# List of projects (low level first)

#
#  Determine which packages are in this release
#
rprojects := $(wildcard *)

#
#  List external package base directories for convenience
#
epics_use      := /cds/group/pcds/package/external/epicsca-R3.14.12-0.4.0
evgr_use       := /cds/group/pcds/package/external/evgr_V00-00-05
qt_use         := /cds/sw/package/qt/4.8.4
qwt_use        := /cds/group/pcds/package/external/qwt-5.1.1-wfopt-logfix
python_use     := /cds/sw/package/python/2.7.16
python3_use    := /cds/sw/package/python/3.6.8
libraw1394_use := /cds/group/pcds/package/external/libdc1394
libdc1394_use  := /cds/group/pcds/package/external/libdc1394
offlinedb_use  := /cds/group/pcds/package/external/offlinedb-1.5.1
edt_use        := /cds/group/pcds/package/external/edt
leutron_use    := /cds/group/pcds/package/external/leutron_V00-00-00
fli_use        := /cds/group/pcds/package/external/fli-dist-1.71
andor_use      := /cds/group/pcds/package/external/andor-2.95.30003.0
libusb_use     := /cds/group/pcds/package/external/libusb-1.0.0
usdusb4_use    := /cds/group/pcds/package/external/usdusb4
acqiris_use    := /cds/group/pcds/package/external/acqiris_3.3a
relaxd_use     := /cds/group/pcds/package/external/relaxd-1.9.9
pvcam_use      := /cds/group/pcds/package/external/pvcam2.7.1.7
picam_use      := /cds/group/pcds/package/external/picam-2.6.1
gsl_use        := /cds/group/pcds/package/external/gsl-2.7.1
boost_use      := /cds/group/pcds/pkg_mgr/release/boost/1.63.0
ndarray_use    := /cds/sw/package/ndarray/1.1.12
psalg_use      := /cds/sw/package/psalg/1.0.12
pdsdata_use    := /cds/sw/package/pdsdata/10.1.2


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
boost_use_lib_rhel9  := $(boost_use)/rhel9-x86_64/lib

ndarray_use_include := $(ndarray_use)

psalg_use_include:= $(psalg_use)/x86_64-linux-opt
psalg_use_i386   := $(psalg_use)/i386-linux
psalg_use_x86_64 := $(psalg_use)/x86_64-linux
psalg_use_rhel6  := $(psalg_use)/x86_64-rhel6
psalg_use_rhel7  := $(psalg_use)/x86_64-rhel7
psalg_use_rhel9  := $(psalg_use)/x86_64-rhel9

pdsdata_use_include:= $(pdsdata_use)/x86_64-rhel7-opt
pdsdata_use_i386   := $(pdsdata_use)/i386-linux
pdsdata_use_x86_64 := $(pdsdata_use)/x86_64-linux
pdsdata_use_rhel6  := $(pdsdata_use)/x86_64-rhel6
pdsdata_use_rhel7  := $(pdsdata_use)/x86_64-rhel7
pdsdata_use_rhel9  := $(pdsdata_use)/x86_64-rhel9

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

timetool_use            := /cds/group/pcds/dist/pds/10.10.5-p10.1.2/build/timetool
timetool_use_include    := $(timetool_use)/include
timetool_use_lib_x86_64 := $(timetool_use)/lib/x86_64-linux-opt
timetool_use_lib_rhel6  := $(timetool_use)/lib/x86_64-linux-opt
timetool_use_lib_rhel7  := $(timetool_use)/lib/x86_64-rhel7-opt
timetool_use_lib_rhel9  := $(timetool_use)/lib/x86_64-rhel9-opt

projects += timetool

projects += gsl ami
ami_use := release

