%   Fun��o que transforma as coordenadas cil�ndricas (r,f,z) para coordenadas retangulares (x,y,z) 
%   Fun��o desenvolvida pelo prof. S�rgio Antenor de Carvalho 
%
%   Inicio  24/02/2010 - vers�o Scilab
%   Revis�o 28/08/2017 - vers�o Matlab
%
%   Dados de entrada: coordenadas cil�ndricas
%   ro -> coordenada ro; fc -> coordenada fi em radianos est� entre 0 e 2pi; zc -> coordenada z
%
%   Dados de sa�da: coordenadas retangulares
%   x -> coordenada x; y -> coordenada y; z -> coordenada z

function [x,y,z] = CooCilRet(ro,fc,zc)
   x = ro.* cos(fc); 
   y = ro.* sin(fc);
   z = zc;
end % fun��o CooCilRet