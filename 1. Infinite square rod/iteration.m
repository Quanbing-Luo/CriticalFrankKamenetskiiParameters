function [theta,delta]=iteration(theta,delta,dh,a)
%[I,J]=size(theta);
[A,B]=parametersAB(theta);

for n=1:100000
   Theta=theta;
 %theta(1,1)=a;  
C=parametersC(theta,delta,dh,a); 
theta=sylvester(A,B,C); 

[L,R]=parametersdelta(theta,dh);
  
delta=R/L; 

if (mod(n,5)==0) %ÿǧ����ʾ���
      err=max(abs(theta(:)-Theta(:)));
%      n 
%      a
    err
 delta
     figure(1)
     mesh(theta);
     if err<1e-8
        break
     end
 end   

end



end
