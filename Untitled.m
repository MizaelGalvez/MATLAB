addpath '\Users\MizaelGalvez\Documents\MATLAB';

filename = 'HeartDisease.csv';

Casos = csvread( filename );  %mandamos a variable para no utilizar el documento.

columnaAanalisar = 58; % colocando en variable por si luego necesitamos reutilizar algo similar
caracteristicaAanalisar = 14; % columna de la caracteristica deseada
ordenar = 0; %0 no, 1 si
    

Casos(:,1) = []; %eliminamos la columna 0

Map = Casos (:,columnaAanalisar) == 0;
Casos_NoHD = Casos(Map,:);

if (ordenar == 1)
    Casos_NoHD = sortrows(Casos_NoHD,caracteristicaAanalisar);
else
    disp('Sin Ordenar')
end

figure(1)
plot(Casos_NoHD(:,caracteristicaAanalisar), 'o', 'color', 'black', 'MarkerFaceColor', 'black', 'MarkerSize', 3)


%=======================
%hold on
%==================

MapY1 = Casos (:,columnaAanalisar) == 1;
Casos_YesHD1 = Casos(MapY1,:);
figure(2)
plot(Casos_YesHD1(:,caracteristicaAanalisar), 'o', 'color', 'green','MarkerFaceColor', 'green', 'MarkerSize', 3)

%=======================
%hold on
%==================

MapY2 = Casos (:,columnaAanalisar) == 2;
Casos_YesHD2 = Casos(MapY2,:);
figure(3)
plot(Casos_YesHD2(:,caracteristicaAanalisar), 'o', 'color', 'blue', 'MarkerFaceColor', 'blue', 'MarkerSize', 3)

%=======================
%hold on
%==================

MapY3 = Casos (:,columnaAanalisar) == 3;
Casos_YesHD3 = Casos(MapY3,:);
figure(4)
plot(Casos_YesHD3(:,caracteristicaAanalisar), 'o', 'color', 'magenta', 'MarkerFaceColor', 'magenta', 'MarkerSize', 3)

%=======================
%hold on
%==================

MapY4 = Casos (:,columnaAanalisar) == 4;
Casos_YesHD4 = Casos(MapY4,:);
figure(5)
plot(Casos_YesHD4(:,caracteristicaAanalisar), 'o', 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', 3)
