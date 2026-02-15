clc; clear;
format long

dt = 1;

T = [1 1 4 2 3 13 4 13 600 120 3000 1000];

lam9  = 1/20500;
lam10 = 1/820;
lam11 = 1/144000;
lam12 = 1/14400;

P = zeros(12,12);

% ====== Provozní stavy ======
for i = 1:7
    
    mu = 1/T(i);
    total = mu + lam9 + lam10 + lam11 + lam12;
    
    % --- CTMC aproximace ---
    P(i,i+1) = mu * dt;
    P(i,9)   = lam9  * dt;
    P(i,10)  = lam10 * dt;
    P(i,11)  = lam11 * dt;
    P(i,12)  = lam12 * dt;
    
    Pii = 1 - total * dt;
    
    % --- Kontrola záporné pravděpodobnosti ---
    if Pii < 0
        
        % přepnutí na kompetitivní formulaci
        P(i,i+1) = mu / total;
        P(i,9)   = lam9  / total;
        P(i,10)  = lam10 / total;
        P(i,11)  = lam11 / total;
        P(i,12)  = lam12 / total;
        
        P(i,i) = 0;
        
    else
        P(i,i) = Pii;
    end
end

% ====== Stav S8 ======
i = 8;
mu = 1/T(8);
total = mu + lam9 + lam10 + lam11 + lam12;

P(8,1)  = mu * dt;
P(8,9)  = lam9  * dt;
P(8,10) = lam10 * dt;
P(8,11) = lam11 * dt;
P(8,12) = lam12 * dt;

Pii = 1 - total * dt;

if Pii < 0
    
    P(8,1)  = mu / total;
    P(8,9)  = lam9  / total;
    P(8,10) = lam10 / total;
    P(8,11) = lam11 / total;
    P(8,12) = lam12 / total;
    
    P(8,8) = 0;
    
else
    P(8,8) = Pii;
end

% ====== Neprovozní stavy ======
for i = 9:12
    mu = 1/T(i);
    P(i,1) = mu * dt;
    P(i,i) = 1 - mu * dt;
end

% ====== Výpis ======
disp('Přechodová matice P:')
disp(round(P,6))

disp('Součet řádků:')
disp(sum(P,2))





% ====== STACIONÁRNÍ ROZDĚLENÍ ======

% řešení vlastního problému
[V,D] = eig(P');

% nalezení vlastního čísla = 1
[~,idx] = min(abs(diag(D)-1));

% odpovídající vlastní vektor
pi = V(:,idx);

% normalizace
pi = pi / sum(pi);

% převod na reálné hodnoty
pi = real(pi);

disp('Stacionární rozdělení pi:')
disp(round(pi',6))

availability = sum(pi(1:8));

disp('Dostupnost systému:')
disp(round(availability,4))

downtime = sum(pi(9:12));

disp('Podíl neprovozního času:')
disp(round(downtime,4))
