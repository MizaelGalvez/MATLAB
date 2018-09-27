function [Normalizacion] = FuncionNormalizar(MatrizFrecuencias, ValoresUnicos)
    
LAPLACE_Matriz_Frecuencias = MatrizFrecuencias+1;

Total_Sumatoria_Columnas = sum(LAPLACE_Matriz_Frecuencias);
Total_Sumatoria_Columnas = Total_Sumatoria_Columnas(1,2);


PORCENTAJE_Matriz_Frecuencias = LAPLACE_Matriz_Frecuencias/Total_Sumatoria_Columnas;


PORCENTAJE_Matriz_Frecuencias(:,1) = ValoresUnicos(:,1);

Normalizacion = PORCENTAJE_Matriz_Frecuencias;
end