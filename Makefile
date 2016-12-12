all:
	python3 setup.py build_ext -if

clean:
	-rm -r build pysfmt.c pysfmt.so
