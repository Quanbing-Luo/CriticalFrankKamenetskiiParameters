clear;
l=1;I=20;J=20;K=20;
dh=l/I;

theta=zeros(I,J,K);
 
a=0.8;
delta=1;

[theta,delta]=iteration(theta,delta,dh,a);