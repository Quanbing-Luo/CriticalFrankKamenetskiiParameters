function Cxy=parametersCxy(theta,delta,dh,a,k)
[I,J,K]=size(theta);

if k==1
Cxy=reshape(-2*theta(1:I,1:J,k+1)-delta*dh^2*exp(theta(1:I,1:J,k)),I,J);
Cxy(1,1)=-6*a+2*theta(2,1,1)+2*theta(1,2,1);
elseif k==K
Cxy=reshape(-theta(1:I,1:J,k-1)-delta*dh^2*exp(theta(1:I,1:J,k)),I,J);   
else
Cxy=reshape(-theta(1:I,1:J,k-1)-theta(1:I,1:J,k+1)-delta*dh^2*exp(theta(1:I,1:J,k)),I,J);
end

Cxy(1:I,1)=Cxy(1:I,1)-reshape(theta(1:I,2,k),I,1);
Cxy(1,1:J)=Cxy(1,1:J)-reshape(theta(2,1:J,k),1,J);


end