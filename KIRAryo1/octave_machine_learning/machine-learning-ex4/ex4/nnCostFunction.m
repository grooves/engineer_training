function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the
%               first time.
%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

X = [ones(m, 1) X];
labels = 1:num_labels;
Y = [labels == y];
HD = sigmoid(X * Theta1.');
HD = [ones(size(HD, 1), 1), HD];
Ji = sum( -Y .* log( sigmoid(HD * Theta2.') ) - (1.0-Y) .* log(1.0 - sigmoid(HD * Theta2.')), 2) / m;
for i = 1:m
	J = J + Ji(i);
end

masked_Theta1 = Theta1;
masked_Theta1(:, 1) = 0;
masked_Theta2= Theta2;
masked_Theta2(:, 1) = 0;
J = J + (sum(sum(masked_Theta1.^2)) + sum(sum(masked_Theta2.^2)) ) * lambda / (2*m);

for t = 1:m
	% forward propagation
	% STEP 1 forward propagation
	Input  = X(t, :); % 1 * 401
	Hidden_in = [1 Input * Theta1.']; % 1 * 26
	Hidden_out = sigmoid(Hidden_in); % 1 * 26
	Output = sigmoid(Hidden_out * Theta2.'); % 1 * 10

	% backpropagation
	% STEP 2 set error for output layer
	delta_o = Output - Y(t, :); % Y is teacher data 1 * 10

	% STEP 3 set error for hidden layer
	delta_h = delta_o * Theta2 .* sigmoidGradient(Hidden_in); % 1 * 26

	% STEP 4 update the gradient
	Theta2_grad = Theta2_grad + delta_o.' * Hidden_out; % 10 * 26
	Theta1_grad = Theta1_grad + delta_h(2:end).' * Input; % 25 * 401
end
% STEP 5 backpropagated gradient
Theta1_grad = Theta1_grad / m;
Theta2_grad = Theta2_grad / m;
% update hypothesis with gradient given by backpropagations







% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
