A = [6 15 55; 15 55 255; 55 255 979];
b = [-7.85 ; -19.3; 71.4];

cholesky(A,b);

function [ L, LT, x ] = cholesky (A,b)

    [n,n]=size(A);
    L= zeros(n,n);
    
    for j = 1:n
        L(j,j) = sqrt(A(j,j)-L(j,:)*L(j,:)');
        
        for k = j+1:n
            L(k,j) = (A(k,j)-L(j,:)*L(k,:)')/L(j,j);
        end
    end
    L    
    LT=L'
        
end