
function [NumeroMaximo] = FuncionObtenerMaximaCantidadDeValoresUnicos(Matriz,Columnas)

tmp = 0;

    for i = 1:Columnas
        
        Valores_Unicos = unique(Matriz(:,i));
        tam = size(Valores_Unicos());
        
        if (tam > tmp) 
            tmp = tam;
        end
        
    end

%disp(MatrizInterna)

NumeroMaximo = tmp;

end