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

hyp = X*theta; %12x2 * 2x1
hypmy = hyp - y;
product = hypmy.*X;
theta_rows = size(theta,1);

J = hypmy'*hypmy/( 2*m );
J = J + lambda*sum( theta(2:end).^2 )/( 2*m );

grad(1) = ( 1/m )*( sum( product(:,1) )' );
grad(2:theta_rows) = ( 1/m )*( sum( product(:,2:theta_rows) )' ) + (lambda/m)*theta(2:theta_rows);

% =========================================================================

grad = grad(:);

end
