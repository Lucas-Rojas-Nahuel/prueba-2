Algoritmo sin_titulo
	Definir palabras Como Caracter
	Dimension palabras[100]
	
	valo<- 1
	
	numMayor<- 0
	posi<-0
	Escribir "Ingresar una palabra"
	Leer palabras[valo]
	Mientras palabras[valo] <> "zzz" Hacer
		pala<- Longitud(palabras[valo])
		
		si pala > numMayor Entonces
			numMayor<- pala
			posi<- valo
		FinSi
		
		valo<- valo +1
		Escribir "Ingresar una palabra", valo
		Leer palabras[valo]
	FinMientras
	Escribir "la palabra ", palabras[posi], " tiene ", numMayor, " caracteres y es mayor que todas las demas palabras"
FinAlgoritmo
