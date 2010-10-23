#
# (C) Copyright 2006
# Stefan Roese, DENX Software Engineering, sr at denx.de.
#
# See file CREDITS for list of people who contributed to this
# project.
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of
# the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston,
# MA 02111-1307 USA
#
#
# FriendlyARM MINI6410 development board, based on
# Samsung S3C64xx Reference Platform (smdk6400) board

# TEXT_BASE for SPL:
#
# On S3C64xx platforms the SPL is located in SRAM at 0.
#
# TEXT_BASE = 0

include $(TOPDIR)/board/$(BOARDDIR)/config.mk

# PAD_TO used to generate a 4kByte binary needed for the combined image
# -> PAD_TO = TEXT_BASE + 4096
PAD_TO	:= $(shell expr $(TEXT_BASE) + 4096)

ifeq ($(debug),1)
PLATFORM_CPPFLAGS += -DDEBUG
endif
