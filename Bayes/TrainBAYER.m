addpath 'C:\Users\MizaelGalvez\Documents\MATLAB\Bayes';

%-------------------importante eliminar la columna de ID's----------------%
%--------------------- Eliminando columna 11 si existe -------------------%
Temp = size(Casos);

if (Temp(1,2) == 11)
    Casos(:,1) = [];
    Test(:,1) = [];
    Train(:,1) = [];
end

%_______________Caso excusivo a los datos que se importen_________________%

%-------------- Creando Probabilidad APRIORI de Frecuencia ---------------%
Valor_Positivo = 4;
Valor_Negativo = 2;
Columna_Clase = 10;

DatosEntrenamiento = Train;
DatosPrueba = Test;

Valores_Unicos = unique(DatosEntrenamiento);

Apriori_Positivo = FuncionProbabilidadApriori(DatosEntrenamiento, 10, Valor_Positivo);
Apriori_Negativo = FuncionProbabilidadApriori(DatosEntrenamiento, 10, Valor_Negativo);

Map_boleano = DatosEntrenamiento(:,10)==Valor_Positivo;
Casos_Positivos = DatosEntrenamiento(Map_boleano,:);

Map_boleano = DatosEntrenamiento(:,10)==Valor_Negativo;
Casos_Negativos = DatosEntrenamiento(Map_boleano,:);
%_________________________________________________________________________%

%------------------- Creando las tablas de Frecuencia --------------------%

Temp = size(Casos_Positivos);
[Positivo_Matriz_Valores_por_Columnas, Positivo_Valores_unicos] = FuncionCrearTablaValoresUnicosPorColumnas(Casos_Positivos, Temp(1,2));


Temp = size(Casos_Negativos);
[Negativo_Matriz_Valores_por_Columnas, Negativo_Valores_unicos] = FuncionCrearTablaValoresUnicosPorColumnas(Casos_Negativos, Temp(1,2));

%-------------------------Ejemplo del Resultado---------------------------%
%
%  nombre variable == ????_Matriz_Valores_por_Columnas
%  Renglon 1 == cantidad de Valores Unicos que existen en la Columna
%
%  ->
%  ->   10    10    10    10    10    10    10    10     9     2
%        1     1     1     1     1     1     1     1     1     2
%        2     2     2     2     2     2     2     2     2     4
%        3     3     3     3     3     3     3     3     3     0
%        4     4     4     4     4     4     4     4     4     0
%        5     5     5     5     5     5     5     5     5     0
%        6     6     6     6     6     6     6     6     6     0
%        7     7     7     7     7     7     7     7     7     0
%        8     8     8     8     8     8     8     8     8     0
%        9     9     9     9     9     9     9     9    10     0
%       10    10    10    10    10    10    10    10     0     0
%
%
%  nombre variable == ????_Valores_unicos
%  Columana 1 == valores unicos entoda la matriz
%
%  ->
%        1 
%        2 
%        3
%        4  
%        5  
%        6  
%        7 
%        8 
%        9 
%       10 
%        
%_________________________________________________________________________%


%------------------- Creando las tablas de Frecuencia --------------------%

Matriz_Frecuencias_Positivo = FuncionCrearTablaFrecuenciasPorValorUnico(Casos_Positivos, Valores_Unicos, size(Positivo_Matriz_Valores_por_Columnas));

Matriz_Frecuencias_Negativo = FuncionCrearTablaFrecuenciasPorValorUnico(Casos_Negativos, Valores_Unicos, size(Negativo_Matriz_Valores_por_Columnas));

%-------------------------Ejemplo del Resultado---------------------------%
%
%  nombre variable == Matriz_Frecuencias
%  Renglon 1 == Valores unicos existentes
%  Comulnas == frecuencias por columnas de ese valor
%  ->
%  ->   1    92   240   228   257    30   258    98   279   366     0
%       2    31    31    37    36   243    23   105    26    21   289
%       3    63    37    30    38    47    21   108    28    24     0
%       4    59    27    31    23    28    11    22    10     6   155
%       5    84    14    22    15    25    16    20    13     3     0
%       6    23    16    17    15    24     4     6    14     1     0
%       7    10    16    18     7     5     5    48     9     5     0
%       8    27    19    20    18    15    11    20    10     6     0
%       9     9     2     5     3     2     6     7    10     0     0
%      10    46    42    36    32    25    89    10    45    12     0
%
%

%Eliminando la Columna de clase

Matriz_Frecuencias_Positivo(:,11) = [];
Matriz_Frecuencias_Negativo(:,11) = [];


%___________________________________________________________Tablas de Frecuencias Obtenidas______________________________________________________________%

%----------------NORMALIZAR-----LAPLACE sin columna 1---------------------------%

PORCENTAJE_Matriz_Frecuencias_Positivo = FuncionNormalizar(Matriz_Frecuencias_Positivo, Valores_Unicos);
PORCENTAJE_Matriz_Frecuencias_Negativo = FuncionNormalizar(Matriz_Frecuencias_Negativo, Valores_Unicos);


%--------------------------------------------------------------------------------------------------------------%
%--------------------------------------------------------------------------------------------------------------%

MatrizProbabilidadesPositivo = FuncionProbabilidadTest(PORCENTAJE_Matriz_Frecuencias_Positivo, Apriori_Positivo, DatosPrueba);
MatrizProbabilidadesNegativo = FuncionProbabilidadTest(PORCENTAJE_Matriz_Frecuencias_Negativo, Apriori_Negativo, DatosPrueba);


MatrizTEST = FuncionCompararProbabilidad(DatosPrueba, MatrizProbabilidadesPositivo, MatrizProbabilidadesNegativo);
Efectividad = (FuncionPorcentajeEfectividad(MatrizTEST)*100);
