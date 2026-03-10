 clc
 clear all
 N=input('enter order : ')
 wc=input('enter cutoff frequency : ')
 a=(N-1)/2
 for n=1:N
     if(n-1==a)
         hd(n)=(wc/%pi)
     else
         hd(n)=(sin(wc*(n-1-a)))/(%pi*(n-1-a))
     end
     w(n)=1
     h(n)=hd(n)*w(n)
 end
 [m,ph]=frmag(h,256)
 mag=abs(m)
 magdb=20*log(mag)
 subplot(211)
 plot(ph/%pi,magdb)
 title('low pass filter')
