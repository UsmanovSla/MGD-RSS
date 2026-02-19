clc;
clear;
format long;

%% Definice parametrů
dt = 1;   % časový krok (s)

% Průměrné doby trvání stavů (s)
states = { ...
    'S1','S2','S3','S4','S5','S6','S7','S8', ...
    'S9','S10','S11','S12'};

T = containers.Map( ...
    states, ...
    [2 2 5 2 5 7 3 6 60 70 160 20]);

% Intenzity poruch (1/s)
lambda_vals = containers.Map( ...
    {'S9','S10','S11','S12'}, ...
    [4/8896, 7/8896, 3/8896, 13/8896]);

n = length(states);

%% Inicializace přechodové matice
P = zeros(n,n);

%% Definice funkcí
exit_probability = @(Ti) 1 - exp(-dt / Ti);
fault_probability = @(lam) 1 - exp(-lam * dt);

%% Definice přechodů
transitions = containers.Map;

transitions('S1')  = {'S2','S9','S11'};
transitions('S2')  = {'S3','S9','S11'};
transitions('S3')  = {'S4','S9','S10','S11'};
transitions('S4')  = {'S5','S9','S11'};
transitions('S5')  = {'S6','S9','S10','S11','S12'};
transitions('S6')  = {'S7','S9','S11'};
transitions('S7')  = {'S8','S9','S10','S11'};
transitions('S8')  = {'S1','S9','S11'};
transitions('S9')  = {'S1'};
transitions('S10') = {'S3'};
transitions('S11') = {'S1'};
transitions('S12') = {'S5'};

%% Výpočet přechodové matice
for i = 1:n
    si = states{i};
    p_exit = exit_probability(T(si));
    
    outgoing = transitions(si);
    
    for k = 1:length(outgoing)
        sj = outgoing{k};
        j = find(strcmp(states, sj));
        
        if isKey(lambda_vals, sj)
            P(i,j) = fault_probability(lambda_vals(sj));
        else
            P(i,j) = p_exit;
        end
    end
    
    % pravděpodobnost setrvání
    P(i,i) = 1 - sum(P(i,:));
end

%% Kontrola součtů řádků
disp("Součty řádků:");
disp(sum(P,2));

disp("Přechodová matice P:");
disp(round(P,8));

%% Stacionární rozdělení
[V,D] = eig(P');

[~,idx] = min(abs(diag(D) - 1));
pi_vec = V(:,idx);

pi_vec = real(pi_vec / sum(pi_vec));

disp("Stacionární rozdělení pi:");
disp(round(pi_vec,6));

%% Dostupnost systému
availability = sum(pi_vec(1:8));
disp("Dostupnost systému:");
disp(round(availability,4));

%% Podíl neprovozního času
downtime = sum(pi_vec(9:12));
disp("Podíl neprovozního času:");
disp(round(downtime,4));

%% Tabulka přechodové matice
P_table = array2table(P, 'VariableNames', states, 'RowNames', states);
disp(P_table);

%% Heatmapa (logaritmická škála)
figure;
imagesc(log10(P + eps));
colorbar;
colormap('hot');
xticks(1:n);
yticks(1:n);
xticklabels(states);
yticklabels(states);
xtickangle(45);
title('Heatmapa přechodové matice (log10 škála)');
xlabel('Do stavu');
ylabel('Ze stavu');