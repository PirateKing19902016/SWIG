%module e

%{
#define SWIG_FILE_WITH_INIT
#include <iostream>
#include "class.h"
int yo()
{
	student s;
	s.values();
	return 0;
}

%}

%include <std_iostream.i>
%include "class.h"
int yo();