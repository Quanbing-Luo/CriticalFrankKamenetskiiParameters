function [A,B]=parametersAB(theta)
[I,J]=size(theta);

A=-2*eye(I)+diag(ones(1,I-1),-1)+diag(ones(1,I-1),1);
B=-2*eye(J)+diag(ones(1,J-1),-1)+diag(ones(1,J-1),1);

end