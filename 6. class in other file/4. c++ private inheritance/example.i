%module example

%{
#define SWIG_FILE_WITH_INIT
#include <iostream>
#include "class.h"
class Stud: public Student
{
public:
	void disp()
	{
		this->display();
	}
	
};

%}

%include <std_iostream.i>
%include "class.h"
class Stud: public Student
{
public:
	void disp();	
};