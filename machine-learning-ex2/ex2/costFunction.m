function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

oho = ones( size( y ) );
z = X*theta; %100x3 * 3x1 = 100x1
hyp = sigmoid( z ); %100x1
loghyp = log( hyp ); %100x1
loghypmo = log( oho - hyp ); %100x1
term = -y.*loghyp; %
termmo = ( oho - y ).*loghypmo; %nx1 * 
J = sum( term - termmo ) / m;

terms = X'*( hyp - y ); %3x100*( 100x1 - 100x1 ) = 3x1
grad = terms / m;

% =============================================================

end
