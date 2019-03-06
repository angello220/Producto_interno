# Personalizar el Módulo de Producto Interno  

El proyecto del [Producto interno acelerado por hardware](https://github.com/angello220/Producto_interno) fue implementado usando la versión 2018.2.1 de Vivado Desing Suite. Para má detalles ver: 
***
Para personalizar el tamaño de los vectores que se multiplicarán y el ancho de cada elemento, así como elegir que versión que se desea implementar, ya sea una versión para minimizar latencia o una para maximizar throughput, siga los siguientes pasos:

## Modificar los parámetros:

Abra el proyecto que se encuentra en la carpeta Both que se encuentra en los archivos del proyecto usando la versión adecuada de Vivado. Deberá ver algo similar a:

![](https://github.com/angello220/Images/blob/master/Producto_interno/Captura1.PNG)

Aquí podrá elegir el tamaño N de los vectores el ancho n de cada elemento, considerando que V=0 implementa la versión para minimizar latencia y V=1 implementa la versión  para maximizar el throughput.

## Cambiar la velocidad de transmisión de datos:

Puede establecer el baut rate de la transmisión de datos entre la terjeta FPGA y el computador personalizando el IP UartPort, como se muestra:

![](https://github.com/angello220/Images/blob/master/Producto_interno/Captura3.PNG)

Además de se puede escoger la frecuencia del reloj a la trabajará el producto interno. Si se cambia dicha frecuencia en el IP UartPort, también se debe cambiar en el IP Clock:

![](https://github.com/angello220/Images/blob/master/Producto_interno/Captura2.PNG)

## Configurar la versión para maximizar throughput:

A diferencia de la versión para minimizar latencia que tan solo usa los dos bloques IP descritos anteriormente, la versión para maximizar throughput usa un bloque IP adicional para realizar la operación de multiplicación que deberá ser configurado adecuadamente según sea el ancho de los elementos que se operan. 

![](https://github.com/angello220/Images/blob/master/Producto_interno/Captura2.PNG)

## IP de transmisión serial UartPort
Este IP ha sido empaquetado usando el código desarrollado por Felipe Veas de la USM. Para poder personalizar sus valores de operación debe ser agregado a la biblioteca local en donde se corre Vivado. El IP se encuentra en una carpeta zip en la siguiente dirección: [UartPort](https://github.com/angello220/Producto_interno/tree/master/HDL/Uart_IP)

## Interface en Matlab
Se ha implementado una interface que permite enviar por el puerto serie los vectores que se desean multiplicar y permite recibir el resultado. Esta interface se encuentra en el archivo Dot_Product. Genera aleatoriamente 10000 pares de vectores para realizar las pruebas, esta cantidad se puede cambiar modificando el límite del lazo for en donde se realizan las operaciones.

