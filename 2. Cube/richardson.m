function delta=richardson(a)

l=1;I=40;J=2*40;K=2*40;
dh=l/I;
delta8h=0.1;

theta8h=zeros(I/8,J/8,K/8);
[theta8h,delta8h]=iteration(theta8h,delta8h,8*dh,a);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
delta4h=delta8h;
theta4h=interpolation(theta8h); 
[theta4h,delta4h]=iteration(theta4h,delta4h,4*dh,a);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
delta2h=delta4h;
theta2h=interpolation(theta4h); 
[theta2h,delta2h]=iteration(theta2h,delta2h,2*dh,a);
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
deltah=delta2h;
thetah=interpolation(theta2h); 
[thetah,deltah]=iteration(thetah,deltah,dh,a);
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 n=log((delta2h-delta4h)/(deltah-delta2h))/log(2);
 delta=(2^n*deltah-delta2h)/(2^n-1);
%delta=deltah;

end

