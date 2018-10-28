function [Average] = FuncionpromediosParaPlot(Matriz)

medias = zeros(1,1);
tam = size(Matriz);
Renglones = tam(1,1);
Columnas = tam(1,2);


    for i = 1:Renglones
        suma = 0;
        
        for j = 1:Columnas
                suma = suma+Matriz(i,j);
        end
        
        medias(i,1) = (suma/(Columnas-1));
        medias(i,2) = Matriz(i,Columnas);
        
    end

Average = medias;