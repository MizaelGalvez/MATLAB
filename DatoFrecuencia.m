DatosUnicos = unique(B);

%DatosUnicos

Size = size(DatosUnicos);

%Size

Tabla_Frecuencias=zeros(Size);



for Contador = 1:Size;
    
    Dato_Analizar = DatosUnicos(Contador,1);
    
    %Datos_Analizar

    Map_de_Unos = ( B == Dato_Analizar );

    %Map_de_Unos

    SUMATORIA = sum(sum(Map_de_Unos));

    %SUMATORIA
    Tabla_Frecuencias(Contador) = SUMATORIA;
    

end

%Concatenar Columnas
Tabla_Datos = [DatosUnicos, Tabla_Frecuencias]