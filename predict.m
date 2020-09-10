function p = predict(theta, X)
m = size(X, 1); 
p = zeros(m, 1);
p=sigmoid(X*theta);
posi=find(p>=0.5);
nega=find(p<0.5);
p(posi)=1;
p(nega)=0;
end
