# Modern Fortran -- Miscellaneous Listings

.PHONY: all clean

all: ch01 ch02 ch03 ch06

%:
	$(MAKE) --directory=src/$@

clean:
	$(MAKE) --directory=src/ch01 clean
	$(MAKE) --directory=src/ch02 clean
	$(MAKE) --directory=src/ch03 clean
	$(MAKE) --directory=src/ch06 clean
