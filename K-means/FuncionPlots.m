function [Plot] = FuncionPlots(Casos,Centroides,Casos_uno,Casos_dos,Casos_tres, tipoLinea, grosor)

% figure(1)
% hold on
% plot(Casos(:,3),Casos(:,4), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);
% plot(Centroides(:,3),Centroides(:,4), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', 6);
% hold off

figure(2)
hold on
plot(Casos_uno(:,3),Casos_uno(:,4), tipoLinea, 'color', 'blue', 'MarkerFaceColor', 'blue', 'MarkerSize', grosor);
plot(Casos_dos(:,3),Casos_dos(:,4), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);
plot(Casos_tres(:,3),Casos_tres(:,4), tipoLinea, 'color', 'magenta', 'MarkerFaceColor', 'magenta', 'MarkerSize', grosor);
plot(Centroides(:,3),Centroides(:,4), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', 6);
hold off

% figure(3)
% hold on
% plot(Casos(:,1),Casos(:,2), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);
% plot(Centroides(:,1),Centroides(:,2), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', 6);
% hold off

figure(4)
hold on
plot(Casos_uno(:,1),Casos_uno(:,2), tipoLinea, 'color', 'blue', 'MarkerFaceColor', 'blue', 'MarkerSize', grosor);
plot(Casos_dos(:,1),Casos_dos(:,2), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);
plot(Casos_tres(:,1),Casos_tres(:,2), tipoLinea, 'color', 'magenta', 'MarkerFaceColor', 'magenta', 'MarkerSize', grosor);
plot(Centroides(:,1),Centroides(:,2), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', 6);
hold off

% figure(5)
% hold on
% plot(Casos(:,1),Casos(:,4), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);
% plot(Centroides(:,1),Centroides(:,4), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', 6);
% hold off

figure(6)
hold on
plot(Casos_uno(:,1),Casos_uno(:,4), tipoLinea, 'color', 'blue', 'MarkerFaceColor', 'blue', 'MarkerSize', grosor);
plot(Casos_dos(:,1),Casos_dos(:,4), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);
plot(Casos_tres(:,1),Casos_tres(:,4), tipoLinea, 'color', 'magenta', 'MarkerFaceColor', 'magenta', 'MarkerSize', grosor);
plot(Centroides(:,1),Centroides(:,4), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', 6);
hold off

% figure(7)
% hold on
% plot(Casos(:,2),Casos(:,3), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);
% plot(Centroides(:,2),Centroides(:,3), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', 6);
% hold off

figure(8)
hold on
plot(Casos_uno(:,2),Casos_uno(:,3), tipoLinea, 'color', 'blue', 'MarkerFaceColor', 'blue', 'MarkerSize', grosor);
plot(Casos_dos(:,2),Casos_dos(:,3), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);
plot(Casos_tres(:,2),Casos_tres(:,3), tipoLinea, 'color', 'magenta', 'MarkerFaceColor', 'magenta', 'MarkerSize', grosor);
plot(Centroides(:,2),Centroides(:,3), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', 6);
hold off

Plot = '';