

swig -c++ -python class.i && g++ -O2 -fPIC -c class.cpp class_wrap.cxx -I/usr/include/python3.7m && g++ -shared class.o class_wrap.o -o _e.so

