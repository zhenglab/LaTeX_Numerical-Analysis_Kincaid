%Horner1 举例
clear all
a = [-2 -5 7 -4 1]; z_0=3;
pz_1 =Horner1(a,z_0)

%Horner2 举例
a = [-2 -5 7 -4 1]; z_0=3;
pz =Horner2(a,z_0)
pz_2=fliplr(pz)

%Horner3 举例
a = [-2 -5 7 -4 1];
[pz_3,pz_4]=Horner3(a,-0.4)

%NewtonH 举例
clear all
a = [-2 -5 7 -4 1];
z=NewtonH(a,0,5,0.00001)

%Bairstow 举例
clear all
a = [-2 -5 7 -4 1];
u=3;
v=-4;
M=7;
[u,v,b]=Bairstow(a,u,v,M)
