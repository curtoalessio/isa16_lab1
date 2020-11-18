samples file and results are to be given from command line as parameters.

for windows: open cmd

iir_filter_adv.exe ../matlab_scripts/<samples_file> <nameresults>

example:
iir_filter_adv.exe ../matlab_scripts/samples.txt resultsc_adv.txt

The executable is relative to the code as presented in the directory, so to the filter with
optimal choice of internal bitwidth. The files named resultsc_adv_<bw>.txt  
are the results of the simulations for other minimum internal bitwidths stated in the <> field.
They were produced by other executables obtained by editing the arguments of >> operator of the c code and rebuilding.
They were used by the script "thd_evaluation.m" to find the minimal internal bitwidth that  
gave necessary precision to satisfy the THD constraint. 
 

