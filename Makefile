APPLICATION := tiny-riot
BOARD ?= seeeduino_xiao
RIOTBASE ?= $(CURDIR)/lib/riot

QUIET ?= 1
QUIETER ?= 1

EXTERNAL_PKG_DIRS += $(CURDIR)/pkg
USEPKG += tiny

# https://github.com/RIOT-OS/RIOT/issues/7140
DIRS += $(CURDIR)/src
USEMODULE += src

USEMODULE += xtimer

# EXTERNAL_BOARD_DIRS can be used to define board outside of RIOT's tree

include $(RIOTBASE)/Makefile.include
