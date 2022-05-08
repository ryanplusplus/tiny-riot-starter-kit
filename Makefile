APPLICATION := seeed-xiao-riot
BOARD ?= seeeduino_xiao
RIOTBASE ?= $(CURDIR)/lib/riot

# USEMODULE += stdio_rtt
QUIET ?= 1
QUIETER ?= 1

# https://github.com/RIOT-OS/RIOT/issues/7140
USEMODULE += src
DIRS += $(CURDIR)/src

# EXTERNAL_BOARD_DIRS can be used to defien board outside of RIOT's tree

include $(RIOTBASE)/Makefile.include
