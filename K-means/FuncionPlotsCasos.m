function [Plot] = FuncionPlotsCasos(Casos, ReCasos, tipoLinea, grosor)

figure(1)
hold on
plot(Casos(:,1), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', grosor);

plot(Casos(:,2), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);

plot(Casos(:,3), tipoLinea, 'color', 'magenta', 'MarkerFaceColor', 'magenta', 'MarkerSize', grosor);

plot(Casos(:,4), tipoLinea, 'color', 'black', 'MarkerFaceColor', 'black', 'MarkerSize', grosor);
hold off
figure(2)
hold on
plot(ReCasos(:,1), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', grosor);

plot(ReCasos(:,2), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);

plot(ReCasos(:,3), tipoLinea, 'color', 'magenta', 'MarkerFaceColor', 'magenta', 'MarkerSize', grosor);

plot(ReCasos(:,4), tipoLinea, 'color', 'black', 'MarkerFaceColor', 'black', 'MarkerSize', grosor);
hold off


Plot = '';