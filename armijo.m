function [tf,na]=armijot(x,d)

alpha= 0.95; % alpha in (0,1)
eta=  0.99; % %eta in (0,1)
t = 1 ;
k = 0 ;
x = [-1.2,1];
max_iteracao = 10000;
g = banana(x,1); 
d = -g; 
fx = banana(x,0); 
fxtd = banana(x+t*d, 0); 
teste = fx+eta*t*g'*d;

    while fxtd > teste, k < max_iteracao;

    t = alpha * t;
    fxtd = banana(x+t*d,0);
    teste = fx+eta*t*g'*d;
    k = k + 1;

    end

    tf = t
    na = k
end
