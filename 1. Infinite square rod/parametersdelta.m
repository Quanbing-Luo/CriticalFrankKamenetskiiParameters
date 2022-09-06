function [L,R]=parametersdelta(theta,dh)
[I,J]=size(theta);
%I=I-1;J=J-1;

R=sum(theta(:,1)-theta(:,2)+theta(:,J))+sum(theta(1,:)-theta(2,:)+theta(I,:));
%temp=theta(1:I,1:J);
L=dh^2*sum(exp(theta(:)));
  
end