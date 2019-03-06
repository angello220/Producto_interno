function Dot_Product()
    %% INTERFAZ PARA OPERACIONES DE PRODUCTO PUNTO HOST-DEVICE
    clc; close all; clear all;  % Borrar el workspace
    % REVISAR SI EL PUERTO SERIE ESTA ABIERTO NO NO
    checkPortOpen();

    %% PARÁMETROS DEL FUNCIONAMIENTO DE PRODUCTO PUNTO
    N=240;      % Define el numero de elementos de cada vector
                % R+S Número total de bits que tendrá la representación
                % Para cambiar R+S es necesario generar otro bitstream
    R=8;        % Número de bits de la parte entera (enviados)
    S=0;       % Número de bits de la parte fraccionaria  (enviados)
   [P,BPC,E,F,BYT,NBY] = setParameters(R,S);
      
    %% CONFIGURACIÓN DEL PUERTO SERIE
    Serie=serial('COM4');
    set(Serie,'BaudRate',115200);
    set(Serie,'DataBits',8);
    set(Serie,'StopBits',1);
    set(Serie,'Parity','None');
    set(Serie,'Terminator','CR/LF'); 
    set(Serie,'InputBufferSize' ,1024);
    set(Serie,'OutputBufferSize' ,1024);
    set(Serie,'FlowControl','None');
    fopen(Serie);

    %% PRODUCTO PUNTO ENTRE LOS VECTORES COLUMNA A Y B
    for i=1:1:1000
        % GENERAR NÚMEROS ALEATORIOS ENTRE -2^(P-1)-1< X < 2^(P-1)-1
        rng(i*8000); %Para obtener siempre los mismos vectores A y B 
        A_real = ceil(random([N,1],-1,1)*(2^(P-1)-1));    % Valor Real A parte entera 
        B_real = ceil(random([N,1],-1,1)*(2^(P-1)-1));    % Valor Real B parte entera 
        % OBTENER EL COMPLEMENTO A2: SI ES POSITIVO QUEDA IGUAL
        A_a2 = dec2twos(A_real,R+S);         % Complemento a2 de A 
        B_a2 = dec2twos(B_real,R+S);         % Complemento a2 de B 
        % ARMAR EL VECTOR QUE SE ENVIARA AL DEVICE PARA PP
        A = makeVector(A_a2,NBY);        % Valor enviado para realizar el pp
        B = makeVector(B_a2,NBY);        % Valor enviado para realizar el pp
        % ENVIAR LOS DOS VECTORES QUE SERAN MULTIPLICADOS A Y B
        fwrite(Serie,1,'uint8'); % Enviar comando para guardar el vector A
        fwrite(Serie,A,'uint8'); % Enviar el vector A
        fwrite(Serie,2,'uint8'); % Enviar comando para guardar el vector B
        fwrite(Serie,B,'uint8'); % Enviar el vector B
        % OBTENER EL RESULTADO DE LA OPERACION EN EL DEVICE
        fwrite(Serie,3,'uint8');      % Comando para solicitar el resultado
        pp_device=fread(Serie,BYT);   % Obtener el valor enviado desde el device
        pp_device = converter(pp_device,BYT,BPC,E,F); % Obtener el valor decimal
        % VALIDAR LOS RESULTADOS OBTENIDOS
        A_eq=getDecimal(A_real,R,S);
        B_eq=getDecimal(B_real,R,S);
        pp_host = A_eq'*B_eq;
        pp_diff = pp_host - pp_device;
        % GUARDAR LOS VALORES DE A Y B Y DEL RESULTADO DE FORMA MATRICIAL
        Areal(:,i)=A_real;
        Breal(:,i)=B_real;
        Aeq(:,i)=A_eq;
        Beq(:,i)=B_eq;
        Asend(:,i)=A;
        Bsend(:,i)=B;
        device(:,i)=pp_device;
        host(:,i)=pp_host;
        diferencia(:,i)=pp_diff;
    end

    %% MOSTRAR EN WORKSPACE LOS RESULTADOS 
    Areal 
    Breal
    Aeq
    Beq
    Asend
    Bsend
    device
    host
    diferencia
    %% CERRAR EL PUERTO SERIE
    fclose(Serie);
end

%% FUNCIONES NECESARIAS IMPLEMETADAS Y MODIFICADAS DE MATLAB
% Convierte el número recibido por el puerto serie a su equivalente decimal
function [sal]= converter(dec,BYT,N,E,F)
    tot='';
    % Primero se obtiene una cadena de bits que corresponden al complemento
    % a2 - del resultado total recibido
    for m=1:1:BYT
        val = dec2bin(dec(m),8);
        tot=strcat(tot,val);
    end
    % Se obtiene el complemento a2 del resultado para obtener el valor en
    % decimal
    [res, sg] = twos2(tot);
    % Se separa en dos partes para obtener por separado el valor entero y 
    % el valor fraccionario 
    entera=Nbin2dec(res(1:E),E);
    fraccion=bin2frac(res(E+1:N),F);  
    % El resultado final es la suma de la parte entera y fraccionaria.
    sal=sg*(entera+fraccion);
end
%==========================================================================
% Función que recibe un número en binario correspondiente a la parte
% fraccionaria del total y calcula su representación decimal.
function sum = bin2frac(bin,N) 
    sum=0;
    for p=1:1:N
        % Cada bit del número binario tiene un peso correspondiente a la
        % posición que ocupa. Este peso viene dado por un potencia inversa
        % de 2: peso=1/2^p donde p es la posición del bit dentro del número
        sum=sum+str2double(bin(p))*(1/(2^p));
    end
end
%==========================================================================
% Toma un vector A con los números generados aleatoriamente y obtiene cual
% es el decimal que representa una vez que se ha enviado al device en forma
% del complemento a2.
function X=getDecimal(A,Q,R)
    for k=1:1:size(A,1)
        if (A(k))<0
            bin=dec2bin(-A(k),Q+R);
            sg=-1;
        else
            bin=dec2bin(A(k),Q+R);
            sg=1;
        end
        if Q==0
            entera='0'; 
        else
            entera=bin(1:Q); 
        end
        frac=bin(Q+1:end);
        entera=bin2dec(entera);
        frac=bin2frac(frac,R);
        X(k,1)=sg*(entera+frac);
    end
end
%==========================================================================
% Toma el vector A que contiene números en binario en complemento a2 y
% genera el vector que se eviará al device para que realice el producto
% punto requerido.
function vec = makeVector(A,NBY)
    vec=[];
    for n=1:1:size(A,1)
        var=num2str(A(n,:));
        for j=1:1:NBY; 
            tmp(j,1)=bin2dec(var(8*(j-1)+1:j*8)); 
        end
        vec=[vec;tmp];
    end
end
%==========================================================================
% Convierte un número decimal a su representación en complemento a2
function val = dec2twos(A,N)
    val=dec2bin(mod(A,2^N),N);
end
%==========================================================================
% Función para obtener el complemento a2
function [tw,sg] = twos2(bin)
    sgn=str2double(bin(1));
    N=size(bin,2);
    if sgn==1
        for v=N:-1:1
            if v==1 
                tw=bin;
                break;
            end
            if str2double(bin(v))==1
                nv1=bin(v:N);
                nv2=toggle(bin(1:v-1));
                tw=strcat(nv2,nv1); 
                break;
            end                
        end 
        sg=-1;
    else
        tw=bin;
        sg=1;
    end
end
%==========================================================================
% Cambia unos por ceros y viceversa. Se usa en la función twos2dec
function ch = toggle(bin)
    ch='';
    for h=size(bin,2):-1:1
        if str2double(bin(h))==0
            ch=strcat('1',ch);
        else
            ch=strcat('0',ch);
        end        
    end
end
%==========================================================================
function checkPortOpen()
    portsinfo = instrfind('Type', 'serial');
    if ~isempty(portsinfo)
        sta=portsinfo.status;
        objects=size(sta);
        for i=1:objects(1,1)
            if strcmp(sta(i,1),'open')
                fclose(instrfind);
            end
        end
    end
end
%==========================================================================
function [P,BPC,E,F,BYT,NBY]= setParameters(R,S)
  P=R+S;           % Potencia máxima para generar los datos decimales
                   % (1 bit para el signo), rango: -2^(P-1)-1 -> 2^(P-1)-1
  E=R*2+8;         % Número de bits recibidos desde el device - entera
  F=S*2;           % Número de bits recibidos desde el device - fraccionaria
  BYT=(E+F)/8;     % Número de bytes recibidos desde el device 
  BPC=F+E;         % Tamaño en bits del vector enviado desde el device
  NBY=(R+S)/8;     % Número de bytes enviados al device
end
%==========================================================================
% FUNCION ORIGINAL DE MATLAB MODIFICADA PARA QUE PERMITA MAS DE 52Bits
function x=Nbin2dec(s,N)
    if iscellstr(s) 
        s = char(s); 
    end

    if ~ischar(s) 
        error(message('MATLAB:bin2dec:InvalidInputClass')); 
    end

    if isempty(s)
        x = []; 
        return, 
    end

    if size(s,2)>N
        error(message('MATLAB:bin2dec:InputOutOfRange')); 
    end

    % remove significant spaces
    for r = 1:size(s,1)
        spacesHere = (s(r,:)==' '|s(r,:)==0);
        if any(spacesHere)
            stmp = s(r,:);                                 
            nrOfZeros=sum(spacesHere);                           
            stmp(spacesHere)='';                           
            s(r,:) = [repmat('0',1,nrOfZeros) stmp];     
        else
            continue;
        end
    end

    % check for illegal binary strings
    if any(any(~(s == '0' | s == '1')))
        error(message('MATLAB:bin2dec:IllegalBinaryString'))
    end

    [m,n] = size(s);

    % Convert to numbers
    v = s - '0'; 
    twos = pow2(n-1:-1:0);
    x = sum(v .* twos(ones(m,1),:),2);
end
%==========================================================================