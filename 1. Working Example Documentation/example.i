/* File: example.i */
%module example

%{
#define SWIG_FILE_WITH_INIT
#include "example.h"
%}

int val(int a);
