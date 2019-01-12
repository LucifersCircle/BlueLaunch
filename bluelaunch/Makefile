include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = BlueLaunch
BlueLaunch_FILES = blLaunchRootListController.m
BlueLaunch_INSTALL_PATH = /Library/PreferenceBundles
BlueLaunch_FRAMEWORKS = UIKit
BlueLaunch_PRIVATE_FRAMEWORKS = Preferences
BlueLaunch_LIBRARIES = applist

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/BlueLaunch.plist$(ECHO_END)
