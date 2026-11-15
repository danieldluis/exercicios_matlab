%% Temperaturas Diárias
% Aplicação: Meteorologia / monitorização ambiental
% Objectivo: Encontrar extremos e plotar a série temporal.

% Dados fixos (30 dias, °C) — reprodutível sem seed
temperaturas = [15.2 16.8 18.1 17.4 19.3 21.0 22.5 23.1 21.8 20.4
                19.1 17.6 16.2 14.8 13.5 14.2 15.9 17.3 18.8 20.1
                21.7 23.4 24.8 25.3 24.1 22.6 20.9 19.3 17.8 16.4];
dias = 1:30;

[T_max, idx_max] = max(temperaturas);
[T_min, idx_min] = min(temperaturas);

fprintf('Temperatura máxima: %.1f °C (dia %d)\n', T_max, idx_max);
fprintf('Temperatura mínima: %.1f °C (dia %d)\n', T_min, idx_min);

figure;
plot(dias, temperaturas, 'b-o', 'LineWidth', 1.2, 'MarkerSize', 4);
hold on;
line([1 30], [T_max T_max], 'Color', 'r', 'LineStyle', '--', 'DisplayName', sprintf('Máx: %.1f°C', T_max));
line([1 30], [T_min T_min], 'Color', 'g', 'LineStyle', '--', 'DisplayName', sprintf('Mín: %.1f°C', T_min));
plot(idx_max, T_max, 'rp', 'MarkerSize', 10, 'MarkerFaceColor', 'r', 'DisplayName', 'Dia máx');
plot(idx_min, T_min, 'gp', 'MarkerSize', 10, 'MarkerFaceColor', 'g', 'DisplayName', 'Dia mín');   
xlabel('Dia');
ylabel('Temperatura (°C)');
title('Série Temporal de Temperaturas (30 dias)');
legend('show');
grid on;   
