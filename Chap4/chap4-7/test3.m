%理查森迭代，详见课本
a=[1 1/2 1/3;1/3 1 1/2;1/2 1/3 1];x=[0;0;0];b=[11/18;11/18;11/18];M=100;
[k,x,r]=Richardson(a,b,x,M)

%SteepestDescent方法
M=13;A=[2 -1 0;1 6 -2;4 -3 8];b=[2; -4; 5];x=[0;0;0];
x=SteepestDescent(x,A,b,M)

%Conjugate gradient method 答案：2 3 -1
M=3;A=[2 -1 0;-1 3 -1;0 -1 2];b=[1; 8; -5];x=[0;0;0];epsilon=0.0001;
delta=0.0001;
x=ConGradient(x,A,b,M,epsilon,delta)

%pcg 算法
M=3;A=[2 -1 0;-1 3 -1;0 -1 2];b=[1; 8; -5];x=[0;0;0];epsilon=0.0001;
delta=0.0001;Q=[1 0 0;0 1 0; 0 0 1];
 x=PCG(x,A,b,M,Q,delta,epsilon)
