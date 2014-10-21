CC = GCC

SOURCES = xdelta3-blkcache.h \
		  xdelta3-cfgs.h \
		  xdelta3-decode.h \
		  xdelta3-djw.h \
		  xdelta3-fgk.h \
		  xdelta3-lzma.h \
		  xdelta3-hash.h \
		  xdelta3-internal.h \
		  xdelta3-list.h \
		  xdelta3-main.h \
		  xdelta3-merge.h \
		  xdelta3-second.h \
		  xdelta3-test.h \
		  xdelta3.h \
		  xdelta3.c

#CFLAGS= -Wall -Wshadow -fno-builtin
CFLAGS= -Wall -Wshadow -fno-builtin
XDWINFLAGS= -DXD3_WIN32=1 -DXD3_STDIO=0 -DXD3_POSIX=0 -DEXTERNAL_COMPRESSION=0 -DSHELL_TESTS=0 \
			-DGENERIC_ENCODE_TABLES=0 -DSECONDARY_DJW=1 -DSECONDARY_FGK=1 -DSECONDARY_LZMA=0 \
			-DXD3_DEBUG=0 -DREGRESSION_TEST=0 -DVCDIFF_TOOLS=1

OPTIM= -O3

XD3_DEFAULT_SETTINGS_FLAGS= -DXD3_DEFAULT_LEVEL=0 -DXD3_DEFAULT_IOPT_SIZE=0 -DXD3_DEFAULT_SRCWINSZ=1000000000 -DXD3_DEFAULT_WINSIZE=16777216

xd32: $(SOURCES)
	$(CC) $(CFLAGS) $(OPTIM) xdelta3.c -o xdelta3-3.0.8-686.exe \
	      $(XDWINFLAGS) \
	      $(XD3_DEFAULT_SETTINGS_FLAGS) \
	      -DXD3_ENCODER=1 \
	      -DXD3_MAIN=1 \
	      -DXD3_USE_LARGEFILE64=1 \

xd64: $(SOURCES)
	$(CC) $(CFLAGS) $(OPTIM) xdelta3.c -o xdelta3-3.0.8-x86_64.exe \
	      $(XDWINFLAGS) \
	      $(XD3_DEFAULT_SETTINGS_FLAGS) \
	      -DXD3_ENCODER=1 \
	      -DXD3_MAIN=1 \
	      -DXD3_USE_LARGEFILE64=1 \
