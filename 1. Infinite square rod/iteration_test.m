clear;
l=1;I=25;J=25;
dh=l/I;

theta=zeros(I,J);
 
a=1.8;
delta=0.1;

[theta,delta]=iteration(theta,delta,dh,a);