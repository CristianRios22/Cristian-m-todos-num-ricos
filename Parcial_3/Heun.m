function euler2(f,x0,x1,h,y0)
x=[x0:h:x1];
n=length(x);
ye=@(x,y) sqrt(1)*(x+x^2)+1;
y(1)=y0;
ev(1)=abs(y(1)-ye(x(1)))/ye(x(1))*100;
for i=2:n
    y0(i)=y(i-1)+f(x(i-1),y(i-1))*h;
    y(i)=y(i-1)+(f(x(i-1),y(i-1))+f(x(i),y0(i)))/2*h;
    ev(i)=abs(y(i)-ye(x(i)))/ye(x(i))*100;
end
salida=[x' y'];
disp(salida)
plot(x,y,'g')