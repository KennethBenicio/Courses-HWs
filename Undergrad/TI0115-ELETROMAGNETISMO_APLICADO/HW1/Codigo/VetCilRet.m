%   Fun��o que transforma um vetor em coordenadas cil�ndricas (ro,fc,zc) para um vetor em coordenadas retangulares (x,y,z)
%   Fun��o desenvolvida pelo prof. S�rgio Antenor de Carvalho 
%
%   Inicio  24/02/2010 - vers�o Scilab
%   Revis�o 28/08/2017 - vers�o Matlab
%
%   Dados de entrada: vetor em coordenadas cil�ndricas
%   ro, fc, z     -> coordenadas ro, f, z do ponto onde o vetor � definido em coordenadas cil�ndricas
%   Aro, Afc, Azc -> componentes do vetor no sistema de coordenadas esf�ricas 
%
%   Dados de sa�da: vetor em coordenadas retangulares
%   x, y, z    -> coordenadas x, y, z do ponto onde o vetor � definido
%   Ax, Ay, Az -> componentes do vetor no sistema de coordenadas retangulares  

function [x,y,z,Ax,Ay,Az] = VetCilRet(ro,fc,zc,Aro,Afc,Azc)
   [x,y,z] = CooCilRet(ro,fc,zc);  % calcula as coordenadas retangulares do ponto onde o vetor � definido 
   senf = sin(fc); cosf = cos(fc); % c�lculos auxiliares
   Ax = Aro.* cosf - Afc * senf;
   Ay = Aro * senf + Afc * cosf;
   Az = Azc;
end % fun��o VetCilRet
