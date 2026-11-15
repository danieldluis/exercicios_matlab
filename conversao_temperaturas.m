%% Conversão de Temperaturas
% Aplicação: Controlo de processos industriais
% Objectivo: Converter temperaturas de °C para °F usando operações vetoriais.

temperaturas_C = [22.5; 35.0; 48.3; 60.1; 75.0; 90.2];

temperaturas_F = temperaturas_C * 9/5 + 32;

fprintf('Conversão de temperaturas:\n');
fprintf('%-10s %-10s\n', '°C', '°F');
fprintf('%s\n', repmat('-', 1, 21));
for i = 1:length(temperaturas_C)
    fprintf('%-10.1f %-10.1f\n', temperaturas_C(i), temperaturas_F(i));
end

figure;
plot(temperaturas_C, temperaturas_F, 'o-', 'LineWidth', 1.5);
xlabel('Temperatura (°C)');
ylabel('Temperatura (°F)');
title('Conversão de Temperatura');
grid on;
