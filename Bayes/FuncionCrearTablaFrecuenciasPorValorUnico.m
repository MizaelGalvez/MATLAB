function [MatrizFrecuencias] = FuncionCrearTablaFrecuenciasPorValorUnico(Matriz,ValoresUnicos, DimencionTabla)
temp = size(ValoresUnicos);
MatrizInterna = zeros((temp(1,1)),(DimencionTabla(1,2)+1));
tam = size(ValoresUnicos());

MatrizInterna(:,1) = ValoresUnicos();


    for i = 1:tam
        
        Map_Frecuencias = Matriz(:,:)==ValoresUnicos(i,1);
        
        MatrizInterna(i,2:(DimencionTabla(1,2)+1)) = sum(Map_Frecuencias);
        
    end


MatrizFrecuencias = MatrizInterna;

end