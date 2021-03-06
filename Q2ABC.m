% Question 2, Parts A and B

%Link Matrix A
A = [0,0,1/5,0,0,0,0,0,0,0,0,0;
    1,0,1/5,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,1/2,0,0,0,0,0;
    0,0,1/5,0,1/2,0,0,0,0,0,0,0;
    0,0,1/5,0,0,0,0,0,0,0,0,0;
    0,0,1/5,0,0,0,0,0,0,0,0,0;
    0,0,0,1,1/2,0,0,0,0,0,0,0;
    0,0,0,0,0,0,1/2,0,1,0,0,0;
    0,0,0,0,0,0,0,1,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0,1,0;
    0,0,0,0,0,0,0,0,0,0,0,1;
    0,0,0,0,0,0,0,0,0,1,0,0];

% Link Matrix B where 0 columns are substitued with elements = 1/N
B = [0,1/12,1/5,0,0,1/12,0,0,0,0,0,0;
    1,1/12,1/5,0,0,1/12,0,0,0,0,0,0;
    0,1/12,0,0,0,1/12,1/2,0,0,0,0,0;
    0,1/12,1/5,0,1/2,1/12,0,0,0,0,0,0;
    0,1/12,1/5,0,0,1/12,0,0,0,0,0,0;
    0,1/12,1/5,0,0,1/12,0,0,0,0,0,0;
    0,1/12,0,1,1/2,1/12,0,0,0,0,0,0;
    0,1/12,0,0,0,1/12,1/2,0,1,0,0,0;
    0,1/12,0,0,0,1/12,0,1,0,0,0,0;
    0,1/12,0,0,0,1/12,0,0,0,0,1,0;
    0,1/12,0,0,0,1/12,0,0,0,0,0,1;
    0,1/12,0,0,0,1/12,0,0,0,1,0,0];
u0 = ones(12,1)*1/12;

C = GetC(0.85,u0,B)

function [C] = GetC(alpha,u,A)

% Use equation given to calculate C
C = alpha*A + (1-alpha)*u*ones(1,12);
end 