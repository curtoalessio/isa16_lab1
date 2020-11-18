samples file and results are to be given from command line as parameters.

for windows: open cmd

iir_filter.exe ../matlab_scripts/<samples_file> <nameresults>

example:
iir_filter.exe ../matlab_scripts/samples.txt resultsc.txt

The executable is relative to the code as presented in the directory, so to the filter with
optimal choice of internal bitwidth.
To do simulation with other bitwidths the C code has to be recompiled with the changes as 
stated in the report, where tables with all the results are present.
