clear all;clc;close all

RS100BB4 = load('curve1BB4.txt');
RS100QB3 = load('curve2QB3.txt');
RS100C4 = load('curve3C4.txt');

figure(1)
semilogx(RS100BB4(:,1),RS100BB4(:,2));
hold on
semilogx(RS100QB3(:,1),RS100QB3(:,2));
semilogx(RS100C4(:,1),RS100C4(:,2));
legend('BB4','QB3','C4')
title('RS100')
xlim([RS100C4(1,1) RS100C4(end,1)])
ylim([40 100])
xlabel('Frequence [Hz]')
ylabel('Amplitude [{$dB_{spl}/W$}]')
lAtexfigIN(12)
FunctionValPrintFig( 1, 'simuAkabak' )