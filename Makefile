BIN_NAME=ipt2socks
BIN_URL=https://raw.githubusercontent.com/SuzukiHonoka/Ipt2socks_Padavan/master/$(BIN_NAME)
BIN_PATH=/usr/bin

THISDIR = $(shell pwd)

all: 
	$(CONFIG_CROSS_COMPILER_ROOT)/bin/mipsel-linux-uclibc-strip $(BIN_NAME)
	upx --best --lzma $(BIN_NAME)

romfs:
	$(ROMFSINST) -p +x $(THISDIR)/$(BIN_NAME) $(BIN_PATH)/$(BIN_NAME)
