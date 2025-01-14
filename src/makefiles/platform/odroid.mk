ifeq '$(ARCH)' 'ODROID'
# do something for ODROID


CFLAGS += \
	-DPLATFORM_ODROID \
	-I../external/rpi-rgb-led-matrix/include/

LIBS_fpp_so += \
	-lrgbmatrix \
	-L../external/rpi-rgb-led-matrix/lib/

OBJECTS_fpp_so += \
	channeloutput/RGBMatrix.o

DEPS_fpp_so += \
	../external/rpi-rgb-led-matrix/lib/librgbmatrix.a

SUBMODULES += \
	external/rpi-rgb-led-matrix
endif
