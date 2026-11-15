%% Velocidade Média por Trecho
% Aplicação: Logística / transporte
% Objectivo: Calcular a velocidade média e identificar o trecho mais rápido.

distancias_km = [120; 85; 200; 150; 95];
tempos_h      = [1.5;  1.2; 2.5;  1.8; 1.1];

velocidade = distancias_km ./ tempos_h;

[idx_max, v_max] = max(velocidade);
fprintf('Trecho mais rápido: trecho %d com %.1f km/h\n', idx_max, v_max);

figure;
bar(velocidade);
hold on;
plot(idx_max, v_max, 'rp', 'MarkerSize', 12, 'MarkerFaceColor', 'r');
xlabel('Trecho');
ylabel('Velocidade (km/h)');
title('Velocidade Média por Trecho');
legend('Velocidade', 'Máximo');
grid on;   
