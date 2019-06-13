#include<iostream>
#include "class.h"

Student::Student()
{
	this->a = 10;
	this->b = 10;
}

void Student::values()
{
	std::cout<<"a = "<<a<<"\nb = "<<b;
}

void Student::display()
{
	this->values();
}

void Student::hello()
{
	std::cout<<"hello world";
}
