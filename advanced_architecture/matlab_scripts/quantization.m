%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% filter design
N=2;
f_cut_off = 2000; % 2kHz
f_sampling = 10000; % 10kHz
f_nyq = f_sampling/2; %% Nyquist frequenc
f0 = f_cut_off/f_nyq; %% Normalized cut-off frequency
[b,a]=butter(N, f0); %% get filter coefficients

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% starting architecture
nb_starting_version=9;     %FIXED BY SPECIFICATIONS

bi=floor(b*2^(nb_starting_version-1)); %% convert b coefficients into nb-bit integers
bq=bi/2^(nb_starting_version-1); %% convert back b coefficients as nb-bit real values
ai=floor(a*2^(nb_starting_version-1)); %% convert a coefficients into nb-bit integers
aq=ai/2^(nb_starting_version-1); %% convert back a coefficients as nb-bit real values

for i=1:3
    b_quant_error(i)= (abs((b(i)-bq(i))*100/b(i)));
end
for i=1:3
    a_quant_error(i)= (abs((a(i)-aq(i))*100/a(i)));
end
a_quant_error_max=max(a_quant_error)
b_quant_error_max=max(b_quant_error)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% advanced architecture
nb_adv_version=11;      %increase until new_fb_quant_error_max and new_ff_quant_error_max are both <1.669%
new_fb_coeff=[-a(2),a(2)*a(2)-a(3),a(2)*a(3)];   %calculating new coefficients
new_fb_coeff_i=floor(new_fb_coeff*2^(nb_adv_version-1)); %% convert coefficients into nb-bit integers
new_fb_coeff_q=new_fb_coeff_i/2^(nb_adv_version-1);      %% convert back coefficients as nb-bit real values

new_ff_coeff_i=floor(b*2^(nb_adv_version-1));       %% convert coefficients into nb-bit integers
new_ff_coeff_q=new_ff_coeff_i/2^(nb_adv_version-1); %% convert back coefficients as nb-bit real values

for i=1:3
    new_ff_quant_error(i)= (abs((b(i)-new_ff_coeff_q(i))*100/b(i)));
end
for i=1:3
    new_fb_quant_error(i)= (abs((new_fb_coeff(i)-new_fb_coeff_q(i))*100/new_fb_coeff(i)));
end
new_fb_quant_error_max=max(new_fb_quant_error)
new_ff_quant_error_max=max(new_ff_quant_error)