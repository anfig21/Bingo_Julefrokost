%% JULEFROKOST: BINGO CARDS %%
clc, clear, close all

% https://myfreebingocards.com/bingo-card-generator

%% Initial parameters
A = readlines('bingo.txt');     % Load entries

nEntries = size(A,1);

%% Randomise selection
rng(0)
hist = randperm(nEntries);

%% Rewrite entries
B = A(hist);

%% Write txt
rng(1)
fileID = fopen('bingoB.txt','w');
fprintf(fileID,"%s\n",B);
fclose(fileID);
