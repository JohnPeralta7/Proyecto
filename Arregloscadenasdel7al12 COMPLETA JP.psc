//PARTE DEL EJERCICIO 7
Funcion tilin<-contMay5[rUser, c]
	Para i<-1 Hasta c Con Paso 1 Hacer
		Si rUser(i)>5 Entonces
			tilin=tilin+1;
		FinSi
	Fin Para
	
FinFuncion
//PARTE DEL EJERCICIO 7
Funcion ositoperu<-sumaMultiplos5[rUser, c]
	Para i<-1 Hasta c Con Paso 1 Hacer
		multi5=rUser(i)%5;
		Si multi5=0 Entonces
			ositoperu=ositoperu+rUser(i);
		FinSi
	Fin Para
FinFuncion


//PARTE DEL EJERCICIO 8
Funcion elevoalcubo[entryUser, c]
	Para i<-1 Hasta c Con Paso 1 Hacer
		alcub=[entryUser(i)]^3;
		Escribir Sin Saltar " ", alcub;
		sumatoria=sumatoria+alcub;
	Fin Para
	Escribir "";
	Escribir " La sumatoria de los numeros elevados al cubo es ", sumatoria;
FinFuncion

//PARTE DEL EJERCICIO 9
Funcion totword<-ContadordePalabras[palabrin]
	longword=Longitud(palabrin);
	Para i<-1 Hasta longword Con Paso 1 Hacer
		Si Subcadena(palabrin, i,i)=" " Entonces
			c=c+1;
		FinSi
		
	Fin Para
	totword=c+1
FinFuncion




//PARTE DEL EJERCICIO 10
Funcion presentadordesecuencia(secunum, c)
	Para i<-1 Hasta c Con Paso 1 Hacer
		Escribir sin saltar " ", secunum(i);
	Fin Para
FinFuncion




//PARTE DEL EJERCICIO 10
Funcion Duplicadordenum[secunum, c]
	Para i<-1 Hasta c Con Paso 1 Hacer
		Doble=secunum(i)*2
		Escribir sin saltar " ", Doble;
	Fin Para
FinFuncion



//PARTE DEL EJERCICIO 11
Funcion contxx<-contadordexonword[palabraingresada, cantpal, tamanopalabra]
	Para i<-1 Hasta cantpal Con Paso 1 Hacer
		Para indication<-1 Hasta tamanopalabra(i) Con Paso 1 Hacer
			Segun Subcadena(palabraingresada(i),indication, indication) Hacer
				"x" o "X":
					contxx=contxx+1;
			Fin Segun
		Fin Para
	Fin Para
FinFuncion




//PARTE DEL EJERCICIO 12
Funcion colocarparesnomas[numeron, conts]
	Dimension arreglopares(100);
	Para indicador<-1 Hasta conts Con Paso 1 Hacer
		comppar=numeron(indicador)%2;
		Si comppar=0 Entonces
			arreglopares(indicador)=numeron(indicador);
			Escribir sin saltar " ", arreglopares(indicador);
		FinSi
		
	Fin Para
FinFuncion








//ALGORITMO PRINCIPAL QUE LLAMA A TODAS LAS FUNCIONES
Algoritmo Arregloscadenasdel7al12
	//EJERCICIO 7, he usado dos funciones con parametro y retorno
	Definir rUser, pares, c, big5, plus5 como entero;
	Dimension rUser(100);
	Escribir "Programa para determinar mayores y multiplos de 5";
	pares=-1;
	Mientras pares<>0 Hacer
		c=c+1;
		Escribir "Ingresa un numero";
		Leer rUser(c);
		pares=rUser(c)%2;
	Fin Mientras
	big5=contMay5(rUser, c);
	plus5=sumaMultiplos5(rUser, c);
	Si big5>0 Entonces
		Escribir "La cantidad de numeros mayores a 5 de la secuencia son ", big5;
	SiNo
		Escribir "No hay numeros mayores de 5 de la secuencia";
	FinSi
	Si plus5>0 Entonces
		Escribir "La suma de los multiplos de 5 de la secuencia son ", sumaMultiplos5(rUser, c);
	Sino 
		Escribir "No hay numeros multiplos de 5, por tanto no se hace sumatoria de nada";
	FinSi
	
	//Aqui TERMINA el EJERCICIO 7
	
	
	//EJERCICIO 8, solo se uso una funcion con Parametros, no se usa Retorno.
	Definir entryUser, c2 Como Entero;
	negacom=0
	Dimension entryUser(100);
	Escribir " ";
	Escribir "--Programa para elevar al cubo y sumar los numeros ingresados por el user--";
	Escribir "Cuando ya no desee ingresar mas numeros,";
	Escribir "ponga un numero negativo para que ya no le pidan mas numeros";
	Mientras negacom>=0 Hacer
		c2=c2+1;
		Escribir "Ingrese un numero";
		Leer entryUser(c2);
		Si entryUser(c2)<0 Entonces
			negacom=-1;
		FinSi
		
		
	Fin Mientras
	Escribir "------Acontinuacion presentacion del arreglo-----";
	Para indicador<-1 Hasta c2 Con Paso 1 Hacer
		Escribir sin saltar " ", entryUser(indicador);
	Fin Para
	Escribir " ";
	Escribir "---Se presenta los numeros del arreglo elevados al cubo---"
	elevoalcubo(entryUser, c2);
	//Aqui TERMINA el EJERCICIO 8
	
	//EJERCICIO 9, se uso una funcion con retorno y parametros.
	Definir palabrin Como Caracter;
	Definir palabron como entero;
	Escribir "-----Programa que cuenta palabras-----";
	Escribir "Ingresa una frase";
	Leer palabrin;
	Escribir "El total de las palabras que hay en la frase es ", ContadordePalabras(palabrin);
	//Aqui TERMINA el EJERCICIO 9
	
	
	//EJERCICIO 10, Se uso dos funciones con PARAMETROS y SIN RETORNO.
	Definir secunum, c, break Como Entero;
	Dimension secunum(100);
	break=0;
	c=0;
	Escribir "---Programa que duplica la cantidad ingresada---";
	Escribir "Cuando ya no desee ingresar mas numeros,";
	Escribir "ingrese un numero negativo para detener todo";
	Mientras break=0 Hacer
		c=c+1;
		Escribir "Ingrese un numero";
		Leer secunum(c);
		Si secunum(c)<0 Entonces
			break=-1;
		FinSi
		
	Fin Mientras
	Escribir "Se presenta la secuencia ingresada";
	presentadordesecuencia(secunum, c);
	Escribir " ";
	Escribir "Se presenta ahora el doble de la secuencia anterior";
	Duplicadordenum[secunum, c];
	Escribir " ";
	//Aqui TERMINA EL EJERCICIO 10.
	

	
	//EJERCICIO 11, se uso una sola FUNCION, PARAMETRO y RETORNO. tener en cuenta que tambien se uso ARREGLOS y CADENA
	Definir   i3, tamanopalabra, beta, cword, ctam, cantpal como entero;
	Definir palabraingresada Como Caracter;
	Escribir "---Programa de palabras--";
	Dimension palabraingresada(100);
	Dimension tamanopalabra(100);
	Mientras beta=0 Hacer
		cword=cword+1;
		ctam=ctam+1;
		cantpal=cantpal+1;
		Escribir "Ingresa una palabra";
		Leer palabraingresada(cword);
		tamanopalabra(ctam)=Longitud(palabraingresada(cword));
		Para i3<-1 Hasta tamanopalabra(ctam) Con Paso 1 Hacer
			Si Subcadena(palabraingresada(cword), i3, i3)="." Entonces
				beta=beta+1;
			FinSi
		Fin Para
		
	Fin Mientras
	Escribir "La cantidad de x que se han detectado son de ", contadordexonword[palabraingresada, cantpal, tamanopalabra];
	//Aqui TERMINA EL EJERCICIO 11
	
	
	
	
	
	//EJERCICIO 12, se uso una FUNCION, con PARAMETROS y sin retorno.
	Definir numeron, conts, numeronpar, breakdown, irrr Como Entero;
	Escribir "---Programa para almacenar numeros pares---";
	Escribir "Se tomara los numeros ingresados, y se los ";
	Escribir "presentara en un arreglo solo los pares";
	Dimension numeron(100);
	Escribir "-------------------------------------------";
	Escribir "Cuando ya no desee ingresar mas numeros, coloque 0";
	Mientras breakdown=0 Hacer
		conts=conts+1;
		Escribir "Ingrese un numero";
		Leer numeron(conts);
		Si numeron(conts)=0 Entonces
			breakdown=1;
		FinSi
		
	Fin Mientras
	Escribir "Se presenta los numeros dado por el usuario";
	Para irrr<-1 Hasta conts Con Paso 1 Hacer
		Escribir sin saltar " ", numeron(irrr);
	Fin Para
	Escribir " ";
	Escribir "Se presenta ahora los numeros presentados por";
	Escribir "el user, pero solo los numeros pares";
	colocarparesnomas(numeron,conts);
	//Aqui TERMINA EL EJERCICIO 12
	
	
	
	
	
	
FinAlgoritmo
