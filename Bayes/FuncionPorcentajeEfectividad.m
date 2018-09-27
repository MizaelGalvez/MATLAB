function [Efectividad] = FuncionPorcentajeEfectividad(MatrizTest)
    
    tam = size(MatrizTest);
    Columnas = tam(1,2);
    Contador = 0;
    
    
    for i = 1:tam(1,1)
        
        if (MatrizTest(i,Columnas-1) ~= MatrizTest(i,Columnas))
        
            Contador = Contador + 1;
            
        end
        
        
    end
    
    CasosTotales = tam(1,1);
    Aciertos = CasosTotales - Contador;
    Efectividad = (Aciertos/CasosTotales);
end