clc
clear all
ni_indB=input("Input SNR ratio in dB:");
no_indB=input("Output SNR ratio in dB:");
To=input("Standard noise temp:");
ni=10^(ni_indB/10);
no=10^(no_indB/10);
n_figure=ni/no
n_factor=10*log10(n_figure)
T_eff=To*(n_figure-1)