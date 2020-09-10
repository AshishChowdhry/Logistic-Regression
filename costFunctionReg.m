function [J, grad] = costFunctionReg(theta, X, y, lambda)
m = length(y);
J = 0;
grad = zeros(size(theta));
z=X*theta;
a=sigmoid(z);
the1=theta;
the1(1)=0;
J=((1/m)*((-y'*log(a)-(1-y)'*log(1-a))))+lambda/(2*m)*sum(the1.^2);
grad=(1/m)*(X'*(a-y))+(lambda/m)*the1;
end
