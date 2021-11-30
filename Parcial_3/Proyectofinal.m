clear all;
clc;
fprintf("Este programa calcula el tiempo necesario en horas para que las bacterias en un lago decrezcan a X cantidad\n")
fprintf("\nLa ecuación que expresa el decrecimiento es: 80e^(-2t)+20e^(-0.5t) ")
fprintf("\nEl primer ejemplo es calculado con el metodo de Newton Raphson, la grafica pertenece al metodo Runge Kutta")
n=input("\n\n¿A cuantas bacterias quieres llegar?: ");
x0=input("\nAproximación inicial: ");
tol=input("\nTolerancia: ");
f = @(x) (80*exp(-2*x))+(20*exp(-0.5*x))-n;
g = @(x) (80*(exp(1)^(-2*x)))+(20*(exp(1)^(-0.5*x)));
newtonraphsonb1(f,x0,tol,n)
% dydt=@(t,y) y+cos(t); %introducir funcion
f=@(x,y) ((-160)*exp(-2*x))-10*(exp(-1.5*x)); %Write your f(x,y) function, where dy/dx=f(x,y), x(x0)=y0.

a=0; %inicio de simulacion
b=11; %fin de simulacion
yinit=100; %conducion inicial 
n=600; %pasos totales;
%elegir el metodo de Runge訪utta para resolver
    dt=((b-a)/n);
    dt;
    x = 0:dt:b;   % Calculates upto y(3)
    x;
    y = zeros(1,length(x)); 
    y(1) = yinit;                                          % initial condition
    for i=1:(length(x)-1)                              % calculation loop
        k_1 = f(x(i),y(i));
        k_2 = f(x(i)+0.5*dt,y(i)+0.5*dt*k_1);
        k_3 = f((x(i)+0.5*dt),(y(i)+0.5*dt*k_2));
        k_4 = f((x(i)+dt),(y(i)+k_3*dt));
        y(i+1) = y(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*dt;  % main equation
        y(i+1);       
    end
    plot(x,y)
    xlabel('Horas');
    ylabel('Millones de Bacterias');
    title('Runge Kutta 4')
    fprintf("********************************************************************\n\n")
    fprintf("Metodo de Euler")
    fprintf('\n\n x        y ');
    b=3;
while a<=b
    fprintf('\n%4.3f  %4.3f ',a,yinit); %values of x and y
    y1=yinit+dt*f(a,yinit);
    x1=a+dt;
    a=x1;
    yinit=y1;  
end