addpath '\Users\MizaelGalvez\Documents\MATLAB';

filename = 'HeartDisease.csv';

Casos = csvread( filename );                 %mandamos a variable para no utilizar el documento.

columnaAanalisar = 58;                       % colocando en variable por si luego necesitamos reutilizar algo similar
caracteristicaAanalisar = 14;                % columna de la caracteristica deseada
ordenar = 0;                                 %0 = para no, 1 = para si
tipoLinea = 'o';                            % los tipos de linea que soporta 
grosor = 6;                                  % escojer el grosor para mejor visualizacion
    

Casos(:,1) = [];                             %eliminamos la columna 0




%==================  INICIAMOS LA LOGICA  ==================%

Map = Casos (:,columnaAanalisar) == 0;                %obtenemos el vector de 1 y 0 donde esa columna sea igual a 0 
Casos_NoHD = Casos(Map,:);                            %nos traemos los registros donde coincidan con el vector anterior
if (ordenar == 1)
    Casos_NoHD = sortrows(Casos_NoHD,caracteristicaAanalisar);  %organizar la tabla obtenida segun la caracteristica de menor a mayor
end
figure(1)                                              %desde aqui al final solo mostramos los datos visualizados en una ventana
plot(Casos_NoHD(:,caracteristicaAanalisar), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', grosor)
title('Sin Problemas Cardiacos');
%=======================
%hold on
%==================

MapY = Casos (:,columnaAanalisar) ~= 0;
Casos_YesHD = Casos(MapY,:);
if (ordenar == 1)
    Casos_YesHD = sortrows(Casos_YesHD,caracteristicaAanalisar);
end
figure(6)
plot(Casos_YesHD(:,caracteristicaAanalisar), tipoLinea, 'color', 'black','MarkerFaceColor', 'black', 'MarkerSize', grosor)
title('Con Problemas Cardiacos');

%=======================
%hold on
%==================

MapY1 = Casos (:,columnaAanalisar) == 1;
Casos_YesHD1 = Casos(MapY1,:);
if (ordenar == 1)
    Casos_YesHD1 = sortrows(Casos_YesHD1,caracteristicaAanalisar);
end
figure(2)
plot(Casos_YesHD1(:,caracteristicaAanalisar), tipoLinea, 'color', 'green','MarkerFaceColor', 'green', 'MarkerSize', grosor)
title('HD nivel 1');

%=======================
%hold on
%==================

MapY2 = Casos (:,columnaAanalisar) == 2;
Casos_YesHD2 = Casos(MapY2,:);
if (ordenar == 1)
    Casos_YesHD2 = sortrows(Casos_YesHD2,caracteristicaAanalisar);
end
figure(3)
plot(Casos_YesHD2(:,caracteristicaAanalisar), tipoLinea, 'color', 'blue', 'MarkerFaceColor', 'blue', 'MarkerSize', grosor)
title('HD nivel 2');

%=======================
%hold on
%==================

MapY3 = Casos (:,columnaAanalisar) == 3;
Casos_YesHD3 = Casos(MapY3,:);
if (ordenar == 1)
    Casos_YesHD3 = sortrows(Casos_YesHD3,caracteristicaAanalisar);
end
figure(4)
plot(Casos_YesHD3(:,caracteristicaAanalisar), tipoLinea, 'color', 'magenta', 'MarkerFaceColor', 'magenta', 'MarkerSize', grosor)
title('HD nivel 3');

%=======================
%hold on
%==================

MapY4 = Casos (:,columnaAanalisar) == 4;
Casos_YesHD4 = Casos(MapY4,:);
if (ordenar == 1)
    Casos_YesHD4 = sortrows(Casos_YesHD4,caracteristicaAanalisar);
end
figure(5)
plot(Casos_YesHD4(:,caracteristicaAanalisar), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor)
title('HD nivel 4');