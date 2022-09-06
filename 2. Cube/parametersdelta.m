function [L,R]=parametersdelta(theta,dh)
[I,J,K]=size(theta);

tempx=theta(1,:,:)-theta(2,:,:)+theta(I,:,:);
tempy=theta(:,1,:)-theta(:,2,:)+theta(:,J,:);
tempz=theta(:,:,1)-theta(:,:,2)+theta(:,:,K);

R=sum(tempx(:))+sum(tempy(:))+sum(tempz(:));

L=dh^2*sum(exp(theta(:)));
  
end