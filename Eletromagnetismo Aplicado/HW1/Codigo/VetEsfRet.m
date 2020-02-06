%   Fun��o que transforma um vetor em coordenadas esf�ricas (r,f,t) para um vetor em coordenadas retangulares (x,y,z)
%   Fun��o desenvolvida pelo prof. S�rgio Antenor de Carvalho 
%
%   Inicio  24/02/2010 - vers�o Scilab
%   Revis�o 28/08/2017 - vers�o Matlab
%
%   Dados de entrada: vetor em coordenadas esf�ricas
%   r, t, f    -> coordenadas r, t, f do ponto onde o vetor � definido em coordenadas esf�ricas
%   Ar, At, Af -> componentes do vetor no sistema de coordenadas esf�ricas 
%
%   Dados de sa�da vetor em coordenadas retangulares
%   x, y, z    -> coordenadas x, y, z do ponto onde o vetor � definido
%   Ax, Ay, Az -> componentes do vetor no sistema de coordenadas retangulares  

function [x,y,z,Ax,Ay,Az] = VetEsfRet(r,t,f,Ar,At,Af)
   [x,y,z] = CooEsfRet(r,t,f); % calcula as coordenadas retangulares do ponto onde o vetor � definido 
   sent = sin(t); cost = cos(t); senf = sin(f); cosf = cos(f); % c�lculos auxiliares
   Ax = Ar .* sent .* cosf + At .* cost .* cosf - Af .* senf;       % componente Ax
   Ay = Ar .* sent .* senf + At .* cost .* senf + Af .* cosf;       % componente Ay
   Az = Ar .* cost - At .* sent;                                 % componente Az
end % fun��o VetEsfRet