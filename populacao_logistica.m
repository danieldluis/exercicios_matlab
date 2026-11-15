%% Modelação Populacional Logística
% Aplicação: Demografia / modelação populacional
% Objectivo: Ajustar e plotar a curva logística, estimar a população futura.

K  = 80e6;
r  = 0.025;
t0 = 1960;

t = 1860:2060;

P = K ./ (1 + exp(-r * (t - t0)));

t_2060 = 2060;
P_2060 = K / (1 + exp(-r * (t_2060 - t0)));
fprintf('População estimada em 2060: %.2f milhões\n', P_2060/1e6);

figure;
plot(t, P/1e6, 'b-', 'LineWidth', 1.5);
hold on;
plot(t_2060, P_2060/1e6, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
xlabel('Ano');
ylabel('População (milhões)');
title('Modelação Populacional Logística');
legend('Curva logística', 'Estimativa 2060');
grid on;   
