%module hello


%{
#define SWIG_FILE_WITH_INIT
#include <iostream>
#include "hello.h"
%}


%include <std_iostream.i>
%include "hello.h"