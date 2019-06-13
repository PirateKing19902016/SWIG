%module e

%{
#define SWIG_FILE_WITH_INIT
#include <iostream>
#include "class.h"
%}

%include <std_iostream.i>
%include <std_windows.i>
%include <std_clocale.i>
%include "class.h"
