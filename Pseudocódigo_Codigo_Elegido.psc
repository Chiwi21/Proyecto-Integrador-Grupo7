Algoritmo Pseudocódigo_Proyecto_Integrador
	Definir gerente, extra,  ventas Como Real
	Definir total, salarioMensual, cant1, cant2, cant3 como Real
	Definir opcion, i, horas, cate1 , cate2, cate3, empleadosTotal como Entero;
	gerente = 1380.57
	extra = 0
	total = 0
	salarioMensual=0 
	cant1 = 0
	cant2 = 0
	cant3 = 0;
	i = 1
	horas = 0
	ventas = 0
	cate1 = 0
	cate2 = 0
	cate3 = 0
	Hacer
		Escribir "Menú de opciones: "
		Escribir "1. Gerente"
		Escribir "2. Trabajador con Horario"
		Escribir "3. Trabajador a Comisión"
		Escribir "4. Salir"
		Escribir "Ingrese una opción: (1-4): "
		Leer opcion 
		
		Segun (opcion)
			caso 1: salarioMensual = 1380.57*4;
				cant1 = cant1 + salarioMensual;
				cate1 = cate1 + 1;
				
			caso 2: salarioMensual = 560.84;
				Escribir "¿Cuántas horas trabajó: "
				Leer horas; 
				Si (horas > 40) Entonces 
				extra = horas - 40;
				extra = extra * 1.5;
				salarioMensual = salarioMensual+((salarioMensual * extra)/100);  
				cant2 = cant2 + salarioMensual;
			FinSi
			cate2 = cate2 + 1;
			
			caso 3: salarioMensual = 425.99;
				Escribir "Cuántas ventas hizo: "
				Leer ventas;
				ventas = (ventas * 4.6)/100;
				salarioMensual = salarioMensual + ventas; 
				cant3 = cant3 + salarioMensual;
				cate3 = cate3 +1;
				
			caso 4:
			De Otro Modo:
			Escribir "Opción no válida. Debe ser entre 1 y 4"	
		FinSegun
	Mientras Que (opcion <> 4)
	total = cant1 + cant2 + cant3;
	empleadosTotal = cate1 + cate2 +cate3;
		Escribir "Cantidad de empleados por categoría: "
		Escribir "Gerente: ", cate1;
		Escribir "Trabajador con Horario: ", cate2;
		Escribir "Trabajador a Comisión: ", cate3;
		Escribir "Total de Empleados: ", empleadosTotal;
		
		Escribir "Monto mensual por categoría: "
		Escribir "Gerente: ", cant1;
		Escribir "Trabajador con Horario: ", cant2;
		Escribir "Trabajador a Comisión: ", cant3;
		
		
		Escribir "Porcentaje que corresponde del total: "
		Escribir "Gerente: ", (cant1/total)*100, "%"
		Escribir "Trabajador con Horario: ", (cant2/total)*100, "%"
		Escribir "Trabajador a Comisión: ", (cant3/total)*100, "%"
		
		Escribir "El total que la empresa debe pagar es de: ", total;
		
		
FinAlgoritmo
