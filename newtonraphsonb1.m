function newtonraphsonb1(f,x0,EE,q)
        syms x;
        format long
        Df=@(xx) subs(diff(f,x),x,xx);
         IM=1;
         r(IM)=x0;
         r(IM+1)=r(IM)-f(r(IM))/Df(r(IM));
         EA(IM+1)=abs((r(IM+1)-r(IM))/r(IM+1))*100;
         z=f(r(IM+1))+q;
         fprintf("El valor de bacterias en la iteracion:"+IM+" es: "+z+"\n")
         while EA(IM+1)>EE
                  IM=IM+1;
                  r(IM+1)=r(IM)-f(r(IM))/Df(r(IM));
                  z=f(r(IM+1))+q;
                  fprintf("El valor de bacterias en la iteracion:"+IM+" es: "+z+"\n")
                  EA(IM+1)=abs((r(IM+1)-r(IM))/r(IM+1))*100;
          end
          Salida1=['Iteracion Maxima=',num2str(IM)];
          Salida2=[r(2:size(r,2))' EA(2:size(r,2))'];
          disp(' ')
          disp(Salida1)
          disp(' ')
          disp('   Raiz               Error Apro ')
          disp(Salida2)
          fprintf("Se necesitan "+r(IM+1)+" horas para que la cantidad de bacterias sea: "+z+"\n")
end