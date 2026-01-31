n=-2:1:2
deldis=[zeros(1,2),ones(1,1),zeros(1,2)]
figure
subplot(231)
plot2d3(n,deldis)
xlabel('Time(s)')
ylabel('Amplitude')
title('Unit Impulse Sequence')

n1=0:1:5
N=length(n1)
step=ones(1,N)
subplot(232)
plot2d3(n1,step)
xlabel('Discrete Time n')
ylabel('Amplitude')
title('Unit Step Sequence')

n2=0:1:10
ramp=n2
subplot(233)
plot2d3(n2,ramp)
xlabel('Discrete Time n')
ylabel('Amplitude')
title('Unit Step Sequence')

a=0.6
n3=0:0.5:10
expo=a^n3
subplot(234)
plot2d3(n3,expo)
xlabel('Discrete Time n')
ylabel('Amplitude')
title('Exponential Sequence')

n4=-1:0.1:1
A1=2
f2=1
sindis=A1*sin(2*%pi*f2*n4)
subplot(235)
plot2d3(n4,sindis)
xlabel('Discrete Time n')
ylabel('Amplitude')
title('Discrete Time Sinusoidal Sequence')

n5=-1:0.1:1
A2=2
f23=1
cosdis=A2*cos(2*%pi*f23*n5)
subplot(236)
plot2d3(n5,cosdis)
xlabel('Discrete Time n')
ylabel('Amplitude')
title('Discrete Time Cosinusoidal Sequence')



