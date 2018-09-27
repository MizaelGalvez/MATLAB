function [MatrizResultados] = FuncionCompararProbabilidad(MatrizTest, ProbabilidadPositiva, ProbabilidadNegativo)
    
    tam = size(MatrizTest);
    
    MatrizInterna = zeros(tam(1,1), 1);
    
    for i = 1:tam(1,1)
        
        if (ProbabilidadPositiva(i,1) > ProbabilidadNegativo(i,1))
        
            MatrizInterna(i,1) = 4;
            
        end
        
        if (ProbabilidadPositiva(i,1) < ProbabilidadNegativo(i,1))
        
            MatrizInterna(i,1) = 2;
            
        end
        
    end
    
    
    MatrizResultados =  [MatrizTest,MatrizInterna];
end