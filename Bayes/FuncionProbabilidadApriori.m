function [probabilidadApriori] = FuncionProbabilidadApriori(Matriz,Columna,Dato)


num = size(Matriz,1);
Mapa = Matriz(:,Columna)==Dato;
numero_criterio = sum(Mapa);

probabilidadApriori=numero_criterio/num;


end