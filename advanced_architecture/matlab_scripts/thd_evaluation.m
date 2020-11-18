input_file=fopen('../cmodel/resultsc_adv.txt','r');        
for i=1:201
    tmp=fgetl(input_file);
    resultsc(i)=sscanf(tmp,'%f');
end
fclose(input_file);
thd(resultsc,10000,5)
