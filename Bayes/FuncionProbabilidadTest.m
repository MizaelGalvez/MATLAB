function [MatrizProbabilidades] = FuncionProbabilidadTest(MatrizNormalizadaPositivo, AprioriPOS, MatrizTest)
    
    tam = size(MatrizTest);
    MatrizTest(:,tam(1,2)) = [];
    tam = size(MatrizTest);
    
    MatrizInterna = zeros(tam(1,1), 1);
    
    Probabilidad = AprioriPOS;
    MatrizNormalizadaPositivo(:,1) = [];
    
    
    for i = 1:tam(1,1)
        
        for j = 1:tam(1,2)
            
            renglon = MatrizTest(i,j);
            columna = j;
            
            Probabilidad = Probabilidad*MatrizNormalizadaPositivo(renglon,columna);
            
        end
        
        MatrizInterna(i,1) = (Probabilidad);
        Probabilidad = AprioriPOS; 
        
    end
    
    
    MatrizProbabilidades = MatrizInterna;
end