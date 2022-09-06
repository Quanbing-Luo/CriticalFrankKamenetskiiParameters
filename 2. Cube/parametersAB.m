function [Ayz,Byz,Axz,Bxz,Axy,Bxy]=parametersAB(theta)
[I,J,K]=size(theta);

Ayz=-3*eye(J)+diag(ones(1,J-1),-1)+diag(ones(1,J-1),1);
Byz=-3*eye(K)+diag(ones(1,K-1),-1)+diag(ones(1,K-1),1);

Axz=-3*eye(I)+diag(ones(1,I-1),-1)+diag(ones(1,I-1),1);
Bxz=-3*eye(K)+diag(ones(1,K-1),-1)+diag(ones(1,K-1),1);

Axy=-3*eye(I)+diag(ones(1,I-1),-1)+diag(ones(1,I-1),1);
Bxy=-3*eye(J)+diag(ones(1,J-1),-1)+diag(ones(1,J-1),1);
end