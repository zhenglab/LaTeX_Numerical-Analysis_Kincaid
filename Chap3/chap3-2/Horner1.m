function b=Horner1(a,z_0) % P(z) = a_0 + a_1*z +...+ a_n*z^n
n=length(a);              % poly degree plus one: N+1
b(n)=a(n);                % initial condition
for k=n-1:-1:1            % iterative Horner's algorithm
b(k)=a(k)+z_0*b(k+1);       
end
b=b(1)
