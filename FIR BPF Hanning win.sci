clc
clear all
close
N=input('enter order : ')
wc1=input('enter cutoff frequency 1 : ')
wc2=input('enter cutoff frequency 2 : ')
a=(N-1)/2
for n=1-N
if(n-1==1)
    hd(n)=(wc2-wc1)/%pi
else
    hd(n)=((sin(wc2*(n-1-a)))-sin(wc1*(n-1-a)))/(%pi*(n-1-a))
end
w(n)=0.5-0.5*cos((2*%pi*(n-1))/(N-1))
h(n)=hd(n)*w(n)
end
[m,ph]=frmag(h,256)
mag=abs(m)
magdb=20*log10(mag)
subplot(111)
plot(ph/%pi,magdb)
title('band pass filter')
