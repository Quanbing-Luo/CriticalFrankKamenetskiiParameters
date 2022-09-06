clear;
tic;
options=optimset('Display','iter','TolX',1e-3);
[amax,minusdeltamax,exitflag,output]=fminbnd(@fun,0.8,2.5,options)
deltamax=-minusdeltamax;
toc;
