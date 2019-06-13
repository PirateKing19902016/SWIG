/* fputws example */
#include <cstdio>

using namespace std;

void print_test()
{

   
}

int main()
{

   wchar_t sentence [256];
   fgetws(sentence,255,stdin);
   fputws(sentence,stdout);
   	return 0;
}