function [bx,by,bz]=parametersb(theta,delta,dh,a)
[I,J,K]=size(theta);I=I-1;J=J-1;K=K-1;

bx(1:I+1,1)=-2*theta(1:I+1,2,1)-2*theta(1:I+1,1,2)-delta*dh^2*exp(theta(1:I+1,1,1));
bx(1,1)=-6*a;bx(I+1,1)=0;


by(1:J+1,1)=(-2*theta(2,1:J+1,1)-2*theta(2,1:J+1,1)-delta*dh^2*exp(theta(1,1:J+1,1)))';
by(1,1)=-6*a;by(J+1,1)=0;


bz(1:K+1,1)=reshape(-2*theta(2,1,1:K+1)-2*theta(1,2,1:K+1)-delta*dh^2*exp(theta(1,1,1:K+1)),K+1,1);
bz(1,1)=-6*a;bz(K+1,1)=0;

end