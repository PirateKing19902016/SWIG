http://www.swig.org/Doc1.3/Python.html

`which python` tells whether local copy or global version used
`/usr/include/python3.7m` for generating dynamic libraries



Create an intermediate file and pass to swig
$ swig -python example.i
this generates .py library

$ gcc -O2 -fPIC -c example.c
$ gcc -O2 -fPIC -c example_wrap.c -I/usr/local/include/python2.5
this generates object file

$ gcc -shared example.o example_wrap.o -o _example.so
this generates shared library required by .py library
When linking the module, the name of the output file has to match the name of the module prefixed by an underscore. If the name of your module is "example", then the name of the corresponding object file should be "_example.so" or "_examplemodule.so". The name of the module is specified using the %module directive or the -module command line option.


The preferred approach to building an extension module for python is to compile it with distutils, which comes with all recent versions of python (Distutils Docs).

The exact commands for doing this vary from platform to platform. However, SWIG tries to guess the right options when it is installed. Therefore, you may want to start with one of the examples in the SWIG/Examples/python directory.


31.2.4 Static linking
the situation has improved greatly over the last few years and you should not consider this approach unless there is really no other option.


Finally, suppose that your extension module is linked with another library like this:



 - [python setup.py for swig](https://github.com/mjwybrow/adaptagrams/blob/master/cola/swig-python-setup.py)

 - [readdocs with various methods](https://intermediate-and-advanced-software-carpentry.readthedocs.io/en/latest/c++-wrapping.html#wrapping-python-code-with-swig)