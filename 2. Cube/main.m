clear;
tic;
options=optimset('Display','iter','TolX',8e-3);
[amax,minusdeltamax,exitflag,output]=fminbnd(@fun,1,1.8,options);
deltamax=-minusdeltamax;
toc;
