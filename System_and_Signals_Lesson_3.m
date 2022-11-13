% Matlab Notes for Lesson 3:
clear all

% Homework:

%Q1 Create matrix A, then compute the wanted properties.
A = randn(3,3);

Transpose_A = transpose(A);

Inverse_A = inv(A);

Identity_matrix = A*Inverse_A; %#ok<MINV>

det_A = det(A);

size_A = size(A);

sec_col = A(:,2);

B = A([1,3],:);

%Q2

S_list = {};
root_list = {};

S_res = [];

for i = 1:10
    squared = i^2;
    root = i^-2;
    
    S_res(end+1) = squared;
    for j = 1:squared
       S_list{end+1} = i;
       disp(i)
       
    end
    
    for k = 1:root
        root_list{end+1} = i;
        disp(i)
    end
    
end

s_sum = sum(S_res);


