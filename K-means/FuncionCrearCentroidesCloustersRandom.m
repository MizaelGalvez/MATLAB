function [CentroidesRandom] = FuncionCrearCentroidesCloustersRandom(CantidadClousters, Casos, Columnas)
Clousters = zeros(1,1);

for i = 1:CantidadClousters
        
        for j = 1:(Columnas-1)
            
            minimo = min(Casos(:,j));
            maximo = max(Casos(:,j));
            
            distancia = maximo - minimo;
            diferencia = (distancia/CantidadClousters);
            centrado = (diferencia/2);
            
            Clousters(i,j) = minimo + (diferencia*i) - centrado;
            
            
        end
        
end


CentroidesRandom = Clousters;