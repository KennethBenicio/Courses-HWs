%   Fun��o que calcula o angulo fi, fornecendo o resultado entre 0 e 2 Pi, tamb�m pode ser usada para calcular a fase de um n�mero complexo
%   esta fun��o ser� usadas pelas fun��es de transforma��es de coordenadas
%
%   Fun��o desenvolvida pelo prof. S�rgio Antenor de Carvalho 
%
%   Inicio  24/02/2010 - vers�o Scilab
%   Revis�o 28/08/2017 - vers�o Matlab
% 
%   Dados de entrada
%   x -> coordenada x 
%   y -> coordenada y 
%
%   Dados de sa�da 
%   Fi -> �ngulo fi em radianos

function [Fi] = FI(x,y)
   Pi = acos(-1.0);
   if x == 0  
     if y == 0  Fi = 0;  % 0 graus
     else 
        if y > 0 
          Fi =  Pi/2;    % 90 graus
        else 
          Fi = 3.0*Pi/2; % 270 graus
        end;
     end;
   else % x <> 0
      if y == 0 
         if x < 0  Fi = Pi; % 180 graus
         else Fi = 0;       % 0 graus
         end;
	    else % x e y <> 0
	       Aux = atan(y/x);
         if (y < 0) & (x < 0) Aux = Aux + Pi; end;       % Aux + 180
	       if (y > 0) & (x < 0) Aux = Aux + Pi; end;
         if (y < 0) & (x > 0) Aux = Aux + 2.0 * Pi; end; % Aux + 360
         Fi = Aux; 
       end;
    end;      
end % fun��o FI