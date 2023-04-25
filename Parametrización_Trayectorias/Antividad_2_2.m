%Limpieza de pantalla
clear all
close all
clc


%Ejemplo 1**************************************************************
%Flor de 3 petalos

%Graficación de la trayectoria en coordenadas polares
%Definimos el parámetro theta como un vector en radianes
theta2=pi/2:1/12*pi:2*pi;
%Definimos el parámetro r como una función respecto a theta
r=cos(theta2);
%Se ingresan parametros a la función polar para la representación gráfica (theta(radianes), r)
figure(1)
polarplot(theta2,r)


%Graficación de la trayectoria en coordenadas cartesianas
%Trasformamos las coordenas polares a cartesianas
x= r.*cos(theta2);
y=r.*sin(theta2);

%graficamos la trayectoria
figure(2)
comet(x,y)


%Graficación de la trayectoria en coordenadas paramétricas

%Se define el parámetro "t" de parametrización sobre el cual se realizará
%la proyección de trayectoria
tiempo=pi/2:1/8*pi:2*pi;

%Se normaliza el intervalo de tiempo al intervalo de variación del ángulo
%theta
t= normalize(tiempo,"range",[0,pi]);

%Obtenemos las ecuaciones dependientes del tiempo
x= cos(t).*cos(t);
y= cos(t).*sin(t);

%graficamos la trayectoria
figure(3)
plot(x,y)
    