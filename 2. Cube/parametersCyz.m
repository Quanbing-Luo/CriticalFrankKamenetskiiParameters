function Cyz=parametersCyz(theta,delta,dh,a,i)
[I,J,K]=size(theta);


if i==1
Cyz=reshape(-2*theta(i+1,1:J,1:K)-delta*dh^2*exp(theta(i,1:J,1:K)),J,K);
Cyz(1,1)=-6*a+2*theta(1,2,1)+2*theta(1,1,2);
elseif i==I
Cyz=reshape(-theta(i-1,1:J,1:K)-delta*dh^2*exp(theta(i,1:J,1:K)),J,K); 
else
Cyz=reshape(-theta(i-1,1:J,1:K)-theta(i+1,1:J,1:K)-delta*dh^2*exp(theta(i,1:J,1:K)),J,K);
end

Cyz(1:J,1)=Cyz(1:J,1)-reshape(theta(i,1:J,2),J,1);

Cyz(1,1:K)=Cyz(1,1:K)-reshape(theta(i,2,1:K),1,K);


end