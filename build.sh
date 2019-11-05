g++ -g -o rgblights.lnx rgblights/rgblights.cpp Demo/Demo.cpp -I./rgblights \
	-DHAVE_LIBUSB=1 -Wfatal-errors $(pkg-config --cflags --libs libusb-1.0)

g++ -g -o rgblights-hidapi-libusb.lnx rgblights/rgblights.cpp Demo/Demo.cpp -I./rgblights \
	-DHAVE_HIDAPI=1 -Wfatal-errors $(pkg-config --cflags --libs hidapi-libusb)

g++ -g -o rgblights-hidapi-hidraw.lnx rgblights/rgblights.cpp Demo/Demo.cpp -I./rgblights \
	-DHAVE_HIDAPI=1 -Wfatal-errors $(pkg-config --cflags --libs hidapi-hidraw)
