%% Sistema Linear 3×3
% Aplicação: Engenharia estrutural / circuitos
% Objectivo: Resolver Ax=b por dois métodos e comparar.

A = [2  1  -1;
     -3 -1   2;
     -2  1   2];
b = [8; -11; -3];

tic;
x1 = A \ b;
t1 = toc;

tic;
x2 = inv(A) * b;
t2 = toc;

fprintf('Solução por A\\b:\n');
disp(x1);
fprintf('Solução por inv(A)*b:\n');
disp(x2);

fprintf('Diferença máxima: %.2e\n', max(abs(x1 - x2)));
fprintf('Tempo A\\b:       %.6f s\n', t1);
fprintf('Tempo inv(A)*b:  %.6f s\n', t2);

fprintf('Verificação A*x1 - b = [%.2e, %.2e, %.2e]\n', (A*x1 - b)');   
