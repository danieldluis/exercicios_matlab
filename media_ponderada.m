%% Média Ponderada de Notas
% Aplicação: Gestão académica
% Objectivo: Calcular a média ponderada de cada aluno e classificar.

notas = [
    14  16  18;
    10  12  14;
    17  15  19;
     8  10   9;
    13  14  16
];

pesos = [1, 1, 2];

media_ponderada = (notas * pesos') / sum(pesos);

classificacao = cell(size(media_ponderada, 1), 1);
for i = 1:length(media_ponderada)
    if media_ponderada(i) >= 16
        classificacao{i} = 'A';
    elseif media_ponderada(i) >= 12
        classificacao{i} = 'B';
    else
        classificacao{i} = 'C';
    end
end

alunos = {'Aluno 1'; 'Aluno 2'; 'Aluno 3'; 'Aluno 4'; 'Aluno 5'};
fprintf('Resultados:\n');
fprintf('%-10s %-12s %-10s\n', 'Aluno', 'Média', 'Classif.');
fprintf('%s\n', repmat('-', 1, 33));
for i = 1:length(alunos)
    fprintf('%-10s %-12.2f %-10s\n', alunos{i}, media_ponderada(i), classificacao{i});
end

figure;
bar(media_ponderada);
xlabel('Aluno');
ylabel('Média Ponderada');
title('Médias Ponderadas por Aluno');
ylim([0 20]);
grid on;   
