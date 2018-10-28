function [Centroides] = FuncionRecalcularCentroides(AsignadosPrimerCentroide, AsignadosSegundoCentroide, AsignadosSTercerCentroide)
Clousters = zeros(3,5);


sumatoria = sum(AsignadosPrimerCentroide);
temp = size(AsignadosPrimerCentroide);
cantidad = temp(1,1);
operacion = (sumatoria/cantidad);
Clousters(1,:) = operacion;


sumatoria = sum(AsignadosSegundoCentroide);
temp = size(AsignadosSegundoCentroide);
cantidad = temp(1,1);
operacion = (sumatoria/cantidad);
Clousters(2,:) = operacion;


sumatoria = sum(AsignadosSTercerCentroide);
temp = size(AsignadosSTercerCentroide);
cantidad = temp(1,1);
operacion = (sumatoria/cantidad);
Clousters(3,:) = operacion;

Clousters(:,5) = [];

Centroides = Clousters;