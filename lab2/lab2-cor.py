#!/usr/bin/env python

#import random                                                                                                                                    
import glob
import os
import py_compile

labo2 = open('labo_2.m','w')
contador = 0 
print("leyendo archivos")
lista = glob.glob("*.m") # aca estan los archivos del alumno
lista_lab_2 = {"rbisec.m","lab2_ej2a.m","lab2_ej2b.m","rnewton.m","lab2_ej4.m","ripf.m","lab2_ej6.m"}

ej = []
imprimir=[]
for i in lista_lab_2:
    if i not in lista:
        print "No esta el archivo" , i
        imprimir = {'1'}
    else:
        ar = i.split('.') 
        ej.append(ar[0])
if 0 not in imprimir:
    print('Estan todos los archivos'+'\nAbrir octave y ejecutar labo_2.m')


labo2.write('function labo_2'+'\n')        
labo2.write('ok=zeros(4,1);'+'\n')
labo2.write('[hx,hf]=rbisec(@fun_rbisc,[-1 1],1e-10,100);'+'\n')
labo2.write('if length(hx)<1, disp("rbisec 1 bien"),ok(1)=1;end,'+'\n')
labo2.write('[hx,hf]=rbisec(@fun_rbisc,[-.9 1],1e-10,100);'+'\n')
labo2.write('if length(hx==100),disp("rbisec 2 bien"),ok(2)=1;end,'+'\n')
labo2.write('[hx,hf]=rbisec(@lab2_ej2a,[.8 1.4],1e-10,100);'+'\n')
labo2.write('if length(hx) == 33, disp("2a bien"),ok(3)=1;end'+'\n')
labo2.write('x=min(hx):0.01:max(hx,1.4); figure, plot(x,@lab2_ej2a(x),hx,hf,"x")'+'\n')
labo2.write('[hx,hf]=rbisec(@lab2_ej2b,[1 3],1e-5,100);'+'\n')
labo2.write('if and(abs(hx(end)^2-3)<=1e-5,length(hx)<100),disp("2b bien"),ok(4)=1;,end'+'\n')
labo2.write('x=min(hx):0.01:max(hx,3); figure, plot(x,@lab2_ej2b(x),hx,hf,"x")'+'\n')
labo2.write('global a, a = 3;'+'\n')
labo2.write('[hx,hf]=rnewton(@lab2_ej4,[1 3],1e-6,100);'+'\n')
labo2.write('if and(abs(hx(end)^3-3)<=1e-6,length(hx)<100),disp("4 bien"),ok(5)=1;end'+'\n')
labo2.write('hx =ripf(@fun_ej6,1.3,1e-5,100) ;')
labo2.write('if length(hx)<100,disp("5 bien"),ok(6)=1;end'+'\n')
labo2.write('figure,lab2_ej6(@fun_ej6)'+'\n')
labo2.write('disp(" ____________________________________________________________")'+'\n')
labo2.write('disp("|                                                            |")'+'\n')
labo2.write('disp("|                                                            |")'+'\n')
labo2.write('if sum(ok)==6,disp("| Faltan ver las graficas para que el practico este aprobado |"),else,disp("|           El practico no esta aprobado                     |"),end'+'\n')
labo2.write('disp("|                                                            |")'+'\n')
labo2.write('disp("|____________________________________________________________|")'+'\n')
labo2.write('end'+'\n')
labo2.write('function f=fun_ej6(x), f = tan(x)/2; end'+'\n')
labo2.write('function f=fun_rbisc(x), if x==-1,f=1;elseif x>0, f=1;else,f=-1;end'+'\n')

labo2.close()

#os.system('octave < labo_2.m > salida_labo_2.m')
#os.system('more salida_labo_2.m')
#os.system('rm labo_1.m')


