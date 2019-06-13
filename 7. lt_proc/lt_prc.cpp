#include <lttoolbox/fst_processor.h>
#include <lttoolbox/lttoolbox_config.h>
#include <lttoolbox/my_stdio.h>
#include <lttoolbox/lt_locale.h>

using namespace std;

void checkValidity(FSTProcessor const &fstp)
{
  if(!fstp.valid())
  {
    exit(EXIT_FAILURE);
  }
}

int main()
{
	FSTProcessor fstp;
	fstp.setDictionaryCaseMode(true);
	FILE *input = stdin, *output = stdout;
  	LtLocale::tryToSetLocale();
  	fstp.load("/usr/share/apertium/apertium-eng/eng.automorf.bin");
	fstp.initAnalysis();
	checkValidity(fstp);
	fstp.analysis(input, output);
	return 0;

}