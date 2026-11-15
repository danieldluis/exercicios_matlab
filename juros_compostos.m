%% Juros Compostos Mensais
% Aplicação: Finanças pessoais
% Objectivo: Simular o crescimento até atingir um valor-alvo.

capital_inicial = 5000;
taxa_anual      = 0.05;
taxa_mensal     = taxa_anual / 12;
valor_alvo      = 10000;

capital = capital_inicial;
meses = 0;
historico = capital;

while capital < valor_alvo
    capital = capital * (1 + taxa_mensal);
    meses = meses + 1;
    historico(end+1) = capital;
end

fprintf('Capital inicial: %.2f €\n', capital_inicial);
fprintf('Valor-alvo:      %.2f €\n', valor_alvo);
fprintf('Taxa anual:      %.1f%%\n', taxa_anual*100);
fprintf('Meses necessários: %d (%.1f anos)\n', meses, meses/12);

figure;
plot(0:meses, historico, 'b-', 'LineWidth', 1.5);
hold on;
line([0 meses], [valor_alvo valor_alvo], 'Color', 'r', 'LineStyle', '--', 'DisplayName', 'Valor-alvo');
xlabel('Meses');
ylabel('Capital (€)');
title('Crescimento com Juros Compostos Mensais');
legend('show');
grid on;   
