%module example

%{
int file_descriptor(int fd)
{
	FILE *output = fdopen(fd, "w");
 	fprintf(output,"write to file stream");
 	fclose(output);
 	return 0;
}
%}

int file_descriptor(int fd);