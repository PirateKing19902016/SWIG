#include "class.h"

class Stud: public Student
{
public:
	void disp()
	{
		this->display();
	}
	
};

int main()
{
	Stud s;
	s.disp();
	return 0;
}
