function C=parametersC(theta,delta,dh,a)


C=-delta*dh^2*exp(theta);
C(:,1)=C(:,1)-theta(:,2);
C(1,:)=C(1,:)-theta(2,:);

C(1,1)=-4*a+theta(1,2)+theta(2,1);

end