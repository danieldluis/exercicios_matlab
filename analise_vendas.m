%% Análise de Vendas por Loja
% Aplicação: Análise de dados de negócio
% Objectivo: Calcular estatísticas e plotar vendas diárias.

vendas = [
    1200  980  1450  1100  1320  1600  1500;
     850  920   780  1050  1100   900  1200;
    2100 1850  2300  2000  2400  2600  2500;
    1500 1600  1400  1700  1550  1800  1750
];
dias  = {'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'};
lojas = {'Loja A'; 'Loja B'; 'Loja C'; 'Loja D'};

soma_total = sum(vendas, 2);
media_dia  = mean(vendas, 2);
desvio     = std(vendas, 0, 2);

fprintf('Estatísticas por loja:\n');
fprintf('%-10s %-12s %-12s %-12s\n', 'Loja', 'Soma (€)', 'Média (€)', 'Desvio');
fprintf('%s\n', repmat('-', 1, 47));
for i = 1:4
    fprintf('%-10s %-12.0f %-12.0f %-12.0f\n', lojas{i}, soma_total(i), media_dia(i), desvio(i));
end

figure;
bar(vendas');
set(gca, 'XTickLabel', dias);
xlabel('Dia da semana');
ylabel('Vendas (€)');
title('Vendas Diárias por Loja');
legend(lojas, 'Location', 'northeast');
grid on;   
