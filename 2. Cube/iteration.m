function [theta,delta]=iteration(theta,delta,dh,a)
%[I,J,K]=size(theta);

for n=1:100000
Theta=theta;
% temp=delta;
%theta(1,1)=a;
theta=facecomputation(theta,delta,dh,a);

[L,R]=parametersdelta(theta,dh);
delta=R/L; 
%err=abs(delta-temp);


if (mod(n,300)==0) %每千步显示结果
      err=max(abs(theta(:)-Theta(:)));
%        n
%        err
%         figure(1)
%         mesh(theta(:,:,1));
     if err<5e-8
        break
     end
 end   

end

end
