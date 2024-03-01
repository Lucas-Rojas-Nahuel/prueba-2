Algoritmo sin_titulo
	
	Definir p, dia, mes, np, cc, pup, tf Como Entero
	Escribir "Ingresar numero de proveedor"
	Leer p
	si p <> 0 Entonces
		Escribir "Ingresar Día (1 a 32)"
		Leer dia
		si dia < 1 o dia > 32 Entonces
			Repetir
				Escribir "Ingresar Día (1 a 32)"
				Leer dia
			Hasta Que dia > 0 y  dia < 33
		FinSi
		Escribir "Ingresar Mes (1 a 12)"
		Leer mes
		si mes < 1 o mes > 12 Entonces
			Repetir
				Escribir "Ingresar Mes (1 a 12)"
				Leer mes
			Hasta Que mes > 0 o mes < 13
		FinSi
		Repetir
			Escribir "Tipo de factura (Responsable inscripto: (1), Consumidor Final: (2), o Monotributo: (3) )"
			Escribir "Ingreasar tipo de factura"
			Leer tf
		Hasta Que tf = 1 o tf = 2 o tf = 3	
		Escribir "Ingresar numero de producto" 
		Leer np
		Escribir "Ingresar cantidad comprada"
		Leer cc
		Escribir "Ingresar precio unitario del producto"
		Leer pup
	FinSi
	
	
	acua=0
	acub=0
	acuc=0
	ban= 0
	max0=0
	Mientras p<>0 Hacer
		pactu= p
		max=0
		cp=0
		Mientras pactu = p Hacer
			
			mon= cc * pup
			si mon > max Entonces
				max= mon
			FinSi
			
			si tf = 1 Entonces
				acua= acua + mon
			SiNo
				si tf = 2 Entonces
					acub= acub + mon
				SiNo
					si tf = 3 Entonces
						acuc= acuc + mon
					FinSi
				FinSi
			FinSi
			
			cp= cp + 1
			
			si mes = 8 Entonces
				si ban= 0 Entonces
					min= mon
					pmin=np 
					ban= 1
				sino
					si mon < min Entonces
						min= mon
						pmin= np 
					FinSi
				FinSi
			FinSi
			
			si cc > max0 Entonces
				max0= cc
				pmax= np
				npmax= p
			FinSi
			
			Escribir "Ingresar numero de proveedor"
			Leer p
			si p <> 0 Entonces
				Escribir "Ingresar Día (1 a 32)"
				Leer dia
				si dia < 1 o dia > 32 Entonces
					Repetir
						Escribir "Ingresar Día (1 a 32)"
						Leer dia
					Hasta Que dia > 0 y  dia < 33
				FinSi
				Escribir "Ingresar Mes (1 a 12)"
				Leer mes
				si mes < 1 o mes > 12 Entonces
					Repetir
						Escribir "Ingresar Mes (1 a 12)"
						Leer mes
					Hasta Que mes > 0 o mes < 13
				FinSi
				Repetir
					Escribir "Tipo de factura (Responsable inscripto: (1), Consumidor Final: (2), o Monotributo: (3) )"
					Escribir "Ingreasar tipo de factura"
					Leer tf
				Hasta Que tf = 1 o tf = 2 o tf = 3	
				Escribir "Ingresar numero de producto" 
				Leer np
				Escribir "Ingresar cantidad comprada"
				Leer cc
				Escribir "Ingresar precio unitario del producto"
				Leer pup
			FinSi
		FinMientras
		
		Escribir "el monto maximo es de ", max , " del proveedor ", pactu
		Escribir "la cantidad de compra que se realizo a cada proveedor ",cp
		
	FinMientras
	Escribir "Inversión  total de (A): ", acua, " (B): ",acub," (C): ",acuc
	Escribir "la compra con menor monto registrado en el mes de agosto fue ", min ," numero del producto ", pmin
	Escribir "el numero de producto ", pmax ," que se compro ", max0," proveedor que se compro el producto ", npmax
FinAlgoritmo
