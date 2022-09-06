function theta=facecomputation(theta,delta,dh,a)
[I,J,K]=size(theta);
[Ayz,Byz,Axz,Bxz,Axy,Bxy]=parametersAB(theta);

for k=1:K
Cxy=parametersCxy(theta,delta,dh,a,k);
Xxy=sylvester(Axy,Bxy,Cxy);theta(1:I,1:J,k)=reshape(Xxy,I,J,1);
end  

for j=1:J
Cxz=parametersCxz(theta,delta,dh,a,j);
Xxz=sylvester(Axz,Bxz,Cxz);theta(1:I,j,1:K)=reshape(Xxz,I,1,K);
end 

for i=1:I
Cyz=parametersCyz(theta,delta,dh,a,i);
Xyz=sylvester(Ayz,Byz,Cyz);theta(i,1:J,1:K)=reshape(Xyz,1,J,K);
end
 
end
