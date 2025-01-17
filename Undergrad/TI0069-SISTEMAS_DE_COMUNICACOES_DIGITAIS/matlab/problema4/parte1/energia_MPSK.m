function E_media = energia_MPSK(M,E_g)
    % Computa a energia media da constelacao M-PSK, sabendo a quantidade de simbolo M e a energia (E_g) do sinal.
    %
    % SYNTAX: E_media = energia_MPSK(M,E_g)
    %
    % INPUTS: 
    %       M : Quantidade de simbolos da constelacao 
    %       E_g : Energia do pulso de transmissao
    %
    % OUTPUTS:
    %       E_media : Energia media do sinal
    %
    % Referencia: Paclcgina 107 do Proakis (5a ed.)
    % $\frac{M-1}{3} \mathcal{E}_g$ 
    %
    % HISTORY:
    % 2021/03/24: - Lucas Abdalah.
    %
    E_media = E_g/2;
end