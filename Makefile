THEOS_DEVICE_IP = 192.168.0.7
ARCHS = arm64 armv7
export TARGET = iphone:11.2:9.3

PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BlueLaunch
BlueLaunch_FILES = Tweak.xm Bluetooth.xm
BlueLaunch_LIBRARIES = applist

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += bluelaunch
include $(THEOS_MAKE_PATH)/aggregate.mk
