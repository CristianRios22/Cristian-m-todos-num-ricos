fprintf("Este programa calcula el tiempo necesario en horas para que las bacterias en un lago decrezcan a X cantidad\n")
fprintf("\nLa ecuación que expresa el decrecimiento es: 80e^(-2t)+20e^(-0.5t) ")
n=input("\n\n¿A cuantas bacterias quieres llegar?: ");
x0=input("\nAproximación inicial: ");
tol=input("\nTolerancia: ");
f = @(x) (80*exp(-2*x))+(20*exp(-0.5*x))-n;
g = @(x) (80*(exp(1)^(-2*x)))+(20*(exp(1)^(-0.5*x)));
newtonraphsonb1(f,x0,tol,n)