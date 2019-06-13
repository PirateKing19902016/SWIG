%module e

%{
#define SWIG_FILE_WITH_INIT
#include <iostream>
#include "class.h"
%}

%include <std_iostream.i>
%include "class.h"