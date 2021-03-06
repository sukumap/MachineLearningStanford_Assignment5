function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

H = X*theta;
Sub = H-y;
SubSquare = Sub.^2;
SumSubSquare = sum(SubSquare);
ThetaSquare = theta.^2;
ThetaSquare(1)=0;
J2= (lambda/(2*m))*sum(ThetaSquare);
J1=SumSubSquare/(2*m);
J=J1+J2;













% =========================================================================

%grad = grad(:);


grad1=grad;
grad1 = X'*Sub;
grad1 = grad1./m;
theta1=theta;
theta1(1) = 0;
theta1 = (lambda *theta1)/m;
grad = grad1 + theta1;

end
