- Perform file handling using FILE*

http://swig.org/Doc1.3/Python.html#Python_nn18


>>> import example
>>> f = example.fopen("junk","w")
>>> example.fputs("Hello World\n", f)
1
>>> example.fclose(f)
0
>>> f = open('junk')
>>> type(f)
<class '_io.TextIOWrapper'>
>>> example.fputs("Hello World\n", f)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/home/kawai/Desktop/Swig/example.py", line 98, in fputs
    return _example.fputs(arg1, arg2)
TypeError: in method 'fputs', argument 2 of type 'FILE *'
