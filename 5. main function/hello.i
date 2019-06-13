%module hello


%{
#define SWIG_FILE_WITH_INIT
#include <iostream>
int main2();
%}


%include <std_iostream.i>
int main2();