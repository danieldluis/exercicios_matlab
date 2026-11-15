%% Aproximação do Número de Euler
% Aplicação: Cálculo numérico
% Objectivo: Calcular o fatorial e a soma que aproxima e.

n = 20;

fatorial = 1;
for k = 1:n
    fatorial = fatorial * k;
end
fprintf('Fatorial de %d = %d\n', n, fatorial);

soma = 1;
fatorial = 1;
for k = 1:n
    fatorial = fatorial * k;
    soma = soma + 1/fatorial;
end

fprintf('Aproximação de e com %d termos: %.15f\n', n, soma);
fprintf('Valor real de e:                %.15f\n', exp(1));
fprintf('Erro absoluto: %.2e\n', abs(soma - exp(1)));   
