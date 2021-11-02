clear, clc
A = [ 9   7   0;
      1  -1   3;
      2   4   6]
renglones = 3;
columnas = 3;
for ren=1:renglones;
    for col=1:columnas;
        fprintf('%d ', A(col, ren))
    end
    fprintf('\n')
end