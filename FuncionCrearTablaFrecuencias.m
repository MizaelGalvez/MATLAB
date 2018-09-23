function [MatrizUnicos] = FuncionCrearTablaFrecuencias(Matriz,Columnas)

MatrizInterna = zeros(1,1);
%es Necesario hacer una fucnion dpnde por columna vea el numero mayor de
%numeros unicos para crear la matriz a ese dato

    for i = 1:Columnas
        
        Valores_Unicos = unique(Matriz(:,i));
        tam = size(Valores_Unicos());
        
        MatrizInterna(1,i) = tam(1,1);
        
        for t = 1:tam
                MatrizInterna(t+1,i) = Valores_Unicos(t);
        end
        
    end

%disp(MatrizInterna)

MatrizUnicos = MatrizInterna;

end