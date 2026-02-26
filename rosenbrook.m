function y=banana(x,ordem)
x1=x(1);
x2=x(2);

if ordem==0
    y=100*(x2-x1^2)^2+(1-x1)^2;
elseif ordem==1
    y=[-400*x1*x2+400*x1^3-2+2*x1, 200*x2-200*x1^2];
elseif ordem==2
    y=[-400*x2+1200*x1^2+2, -400*x1;
        -400*x1,             200];
else
    error('Error in the variable ordem')
end

