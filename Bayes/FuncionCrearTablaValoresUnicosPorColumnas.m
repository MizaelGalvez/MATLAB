function [MatrizUnicos, Valores_Unicos] = FuncionCrearTablaValoresUnicosPorColumnas(Matriz,Columnas)

MatrizInterna = zeros(1,1); % se crea una matriz, cual cual se llenara con los datos de los valores unicos por columnas

    for i = 1:Columnas
        
        Valores_Unicos = unique(Matriz(:,i));
        tam = size(Valores_Unicos());
        
        MatrizInterna(1,i) = tam(1,1);
        
        for t = 1:tam
                MatrizInterna(t+1,i) = Valores_Unicos(t);
        end
        
    end

%disp(MatrizInterna)
Valores_Unicos = unique(Matriz());
MatrizUnicos = MatrizInterna;

end