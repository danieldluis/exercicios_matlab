%% Raízes de Equações Quadráticas
% Aplicação: Engenharia / física
% Objectivo: Criar uma função que retorna as raízes reais de ax²+bx+c=0.

a = [1, 2, 1];
b = [-3, -5, 2];
c = [2,  6, -3];

n_eq = length(a);
for i = 1:n_eq
    fprintf('Equação %d: %dx² %+.dx %+.d = 0\n', i, a(i), b(i), c(i));
    [r1, r2] = raizes2(a(i), b(i), c(i));
    if ~isempty(r1)
        fprintf('  Raízes: x1 = %.4f, x2 = %.4f\n', r1, r2);
    else
        fprintf('  Sem raízes reais (Δ < 0)\n');
    end
end

%% Função
function [r1, r2] = raizes2(a, b, c)
%RAIZES2 Calcula as raízes reais de ax²+bx+c=0
    delta = b^2 - 4*a*c;
    if delta < 0
        r1 = [];
        r2 = [];
    elseif delta == 0
        r1 = -b/(2*a);
        r2 = r1;
    else
        r1 = (-b + sqrt(delta)) / (2*a);
        r2 = (-b - sqrt(delta)) / (2*a);
    end
end   
