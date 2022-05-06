export ARCHS = arm64 arm64e
export TARGET = iphone:clang:latest:7.0
#CFLAGS = -fobjc-arc
#THEOS_PACKAGE_DIR_NAME = debs

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = heroage
heroage_FILES = Tweak.xm
heroage_FRAMEWORKS = UIKit
heroage_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
include $(THEOS_MAKE_PATH)/aggregate.mk