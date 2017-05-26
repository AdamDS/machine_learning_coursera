function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

yAdmit = find( y == 1 );
plot( X( yAdmit , 1 ) , X( yAdmit , 2 ) , 'k+' , 'LineWidth' , 2 , 'MarkerSize' , 4 )

yNotAd = find( y == 0 );
plot( X( yNotAd , 1 ) , X( yNotAd , 2 ) , 'ko' , 'MarkerFaceColor' , 'y' , 'MarkerSize' , 4 )


% =========================================================================



hold off;

end
