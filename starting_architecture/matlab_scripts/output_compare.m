input_file=fopen('../cmodel/resultsc.txt','r');    %opening c model results file 
input_file2=fopen('../sim/results_vhdl_v1.txt','r');  %opening vhdl model results file 
input_file3=fopen('resultsm.txt','r');         %opening matlab results file 
for i=1:201
    tmp=fgetl(input_file);                     %read result from c model results file
    resultsc(i)=sscanf(tmp,'%f');              %save that c model result in resultsc(i)
    
    tmp=fgetl(input_file2);                    %read result from vhdl model results file
    results_vhdl(i)=sscanf(tmp,'%f');          %save that vhdl model result in results_vhdl(i)

    tmp=fgetl(input_file3);                    % read result from matlab model results file
    resultsm(i)=sscanf(tmp,'%f');              % save that matlab model result in resultsm(i)
end
fclose('all');              % closing open files

fs=10000;                   % sampling frequency
f1=500;                     % in band component
tt=0:1/fs:10/f1;   

THD_matlab=thd(resultsm,fs,5)           % evaluate THD of matlab results
THD_c_model=thd(resultsc,fs,5)          % evaluate THD of C model results
THD_vhdl_model=thd(results_vhdl,fs,5)   % evaluate THD of VHDL model results    

max_error=max(abs(resultsc-results_vhdl))    % error between C and VHDL (should be 0)
scale_factor=8;   % set to 8 to compare the results of starting architecture
                  % set to 4 to compare the results of advanced architecture
figure
plot(tt, resultsm,'--');
hold on;
plot(tt,scale_factor * resultsc,'r-+');      % red waveform for c results
plot(tt,scale_factor * results_vhdl,'g--o');  % green waveform for vhdl results
