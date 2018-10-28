function [Distancias] = FuncionCalcularDistancias(Clousters, Casos, Renglones, Columnas, CantidadClousters)
Resultados = zeros(1,1);

for K = 1:CantidadClousters
    for i = 1:Renglones
        suma = 0;

            for j = 1:(Columnas-1)

                Distancia = (Casos(i,j)-Clousters(K,j));
                Cuadrado = (Distancia*Distancia);
                suma = suma + Cuadrado;
                Resultados(i,K) = suma;

            end

    end
end

Distancias = Resultados;