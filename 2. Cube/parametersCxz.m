function Cxz=parametersCxz(theta,delta,dh,a,j)
[I,J,K]=size(theta);

if j==1
Cxz=reshape(-2*theta(1:I,j+1,1:K)-delta*dh^2*exp(theta(1:I,j,1:K)),I,K); 
Cxz(1,1)=-6*a+2*theta(2,1,1)+2*theta(1,1,2);
elseif j==J
Cxz=reshape(-theta(1:I,j-1,1:K)-delta*dh^2*exp(theta(1:I,j,1:K)),I,K); 
else
Cxz=reshape(-theta(1:I,j-1,1:K)-theta(1:I,j+1,1:K)-delta*dh^2*exp(theta(1:I,j,1:K)),I,K);
end

Cxz(1:I,1)=Cxz(1:I,1)-reshape(theta(1:I,j,2),I,1);

Cxz(1,1:K)=Cxz(1,1:K)-reshape(theta(2,j,1:K),1,K);


end