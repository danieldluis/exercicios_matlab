%% Modelação Populacional Logística
% Aplicação: Demografia / modelação populacional
% Objectivo: Ajustar e plotar a curva logística, estimar a população futura.

K  = 187.273e6;
r  = 0.0313;
t0 = 1913.25;

t = 1797:2027;

P = K ./ (1 + exp(-r * (t - t0)));

t_2027 = 2027;
P_2027 = K / (1 + exp(-r * (t_2027 - t0)));
fprintf('População estimada em 2027: %.2f milhões\n', P_2027/1e6);

figure;
plot(t, P/1e6, 'b-', 'LineWidth', 1.5);
hold on;
plot(t_2027, P_2027/1e6, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
xlabel('Ano');
ylabel('População (milhões)');
title('Modelação Populacional Logística');
legend('Curva logística', 'Estimativa 2027');
grid on;   
