APPLICATION := tiny-riot
BOARD ?= seeeduino_xiao_no_boot_loader
RIOTBASE ?= $(CURDIR)/lib/riot

PROGRAMMER ?= openocd
OPENOCD_DEBUG_ADAPTER ?= jlink
JLINK_DEVICE ?= ATSAMD21G18

QUIET ?= 1
QUIETER ?= 1

EXTERNAL_BOARD_DIRS += $(CURDIR)/boards

EXTERNAL_PKG_DIRS += $(CURDIR)/pkg
USEPKG += tiny

# https://github.com/RIOT-OS/RIOT/issues/7140
DIRS += $(CURDIR)/src
USEMODULE += src

USEMODULE += xtimer

include $(RIOTBASE)/Makefile.include
