function [Asignado] = FuncionAsignarCentroide(DistanciasPorClouster, Casos, Renglones)
Resultados = zeros(1,1);

    for i = 1:Renglones

            for j = 1:1

                if ((DistanciasPorClouster(i,j) < DistanciasPorClouster(i,j+1))&&(DistanciasPorClouster(i,j) < DistanciasPorClouster(i,j+2)))
        
                    Resultados(i,1) = 1;
            
                end

                if ((DistanciasPorClouster(i,j+1) < DistanciasPorClouster(i,j))&&(DistanciasPorClouster(i,j+1) < DistanciasPorClouster(i,j+2)))
        
                    Resultados(i,1) = 2;
            
                end
                
                if ((DistanciasPorClouster(i,j+2) < DistanciasPorClouster(i,j+1))&&(DistanciasPorClouster(i,j+2) < DistanciasPorClouster(i,j)))
        
                    Resultados(i,1) = 3;
            
                end
                

            end

    end
    
Casos(:,5) = []; 

Asignado = [Casos,Resultados];