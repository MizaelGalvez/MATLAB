addpath 'C:\Users\MizaelGalvez\Documents\MATLAB\K-means';

filename = 'flores.csv';

Casos = csvread( filename );
Vueltas = 0;

%-------------------Variables Cambiables-----------------------------
%-------Encontrar Cantidad de Clouster segun las clases existentes---
    temp = size(Casos);
    Renglones = temp(1,1);
    Columnas = temp(1,2);
    ValoresClase = unique(Casos(:,Columnas));
    temp = size(ValoresClase);
    CantidadClousters = temp(1,1);
%--------------------
tipoLinea = 'o';                             % los tipos de linea que soporta 
grosor = 4;                                  % escojer el grosor para mejor visualizacion

%-------------------Plots para entender datos---------------------------

Espacio = Casos;

Medias = FuncionpromediosParaPlot(Casos);

Map_boleano = Casos(:,5)==1;
Casos_uno = Casos(Map_boleano,:);

Map_boleano = Casos(:,5)==2;
Casos_dos = Casos(Map_boleano,:);

Map_boleano = Casos(:,5)==3;
Casos_tres = Casos(Map_boleano,:);


%----------------------Crear los Centroides para cada Closter-------------

CentroidesRandom = FuncionCrearCentroidesCloustersRandom(CantidadClousters,Casos, Columnas);

%-----------------------Calculando Distancias a Centroides ----------------
Centroides = CentroidesRandom;
CentroidesReasignados = zeros(1,1);
convergen = 0;

%temp = FuncionPlots( Casos, Centroides,Casos_uno,Casos_dos,Casos_tres, tipoLinea, grosor);


while convergen ~= 1
    
    

    DistanciasPorClouster = FuncionCalcularDistancias(Centroides, Casos, Renglones, Columnas, CantidadClousters);


    CasosReAsignados = FuncionAsignarCentroide(DistanciasPorClouster, Casos, Renglones);

    Map_boleano = CasosReAsignados(:,5)==1;
    AsignadosPrimerCentroide = CasosReAsignados(Map_boleano,:);

    Map_boleano = CasosReAsignados(:,5)==2;
    AsignadosSegundoCentroide = CasosReAsignados(Map_boleano,:);

    Map_boleano = CasosReAsignados(:,5)==3;
    AsignadosTercerCentroide = CasosReAsignados(Map_boleano,:);

    CentroidesReasignados = FuncionRecalcularCentroides(AsignadosPrimerCentroide, AsignadosSegundoCentroide, AsignadosTercerCentroide);

    
    
     if ((Centroides(:,:) == CentroidesReasignados(:,:)))
        
                    convergen = 1;
            
     end
                    %temp = FuncionPlots( Casos, Centroides,AsignadosPrimerCentroide,AsignadosSegundoCentroide,AsignadosTercerCentroide, tipoLinea, grosor);
                    Centroides = CentroidesReasignados;
                    Vueltas = Vueltas +1;
                    
                    
end

CasosReAsignados = sortrows(CasosReAsignados,5);

reMedias = FuncionpromediosParaPlot(CasosReAsignados);

temp = FuncionPlots( Casos, Centroides,AsignadosPrimerCentroide,AsignadosSegundoCentroide,AsignadosTercerCentroide, tipoLinea, grosor);





