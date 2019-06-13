#include<iostream>
#include "class.h"

student::student()
{
	this->a = 10;
	this->b = 10;
}

void student::values()
{
	std::cout<<"a = "<<a<<"\nb = "<<b;
}

