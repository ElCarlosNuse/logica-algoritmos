Algoritmo StudioFX
	
	//Definición de las variables
	Definir opcio, canti_Vid4k, decision Como Entero;
	Definir costo_min, costo_total, costo_vid, total_minu, duracion Como Real;
	Definir nombre, calidad Como Caracter;
	
	//Inicializando las variables en 0
	
	costo_min= 0;
	costo_total= 0;
	costo_vid= 0;
	total_minu=0;
	duracion=0;
	canti_Vid4k=0;
	opcio=0;
	desicion=0;
	
	
		
	
	Escribir "Bienvenido a StudioFx Por favor ingrese los datos que se le piden a continuacion";
	
	//Comienzo del Bucle Repite // Hasta
	Repetir
		
		//Cargando los datos Nombre//duracion//calidad
	Escribir "----------------------Cargando Nuevos Datos----------------------------";
	Escribir "------------------------CARGANDO NOMBRE--------------------------------";
	Escribir "Ingrese el nombre del nuevo proyecto (video) en el cual va a trabajar";
	leer nombre;
	Escribir "------------------------CARGANDO DURACION-----------------------------";
	Escribir "Ahora ingrese la duración del video (min): ";
	leer duracion;
	Escribir "------------------------CARGANDO CALIDAD------------------------------";
	Escribir "Bien ahora ingrese la resolución la cual tiene el video que desea editar:";
	Escribir "1 Para Full HD (1080p)";
	Escribir "2. Para 4k (Ultra HD)";
	Escribir "3. Para 8K (Cine)";
	Escribir "Ingrese su desición: ";
	leer opcio;
	
	//Definiendo el tipo de calidad con Según
	Segun opcio Hacer
		1: 
			costo_min= 15;
			calidad= "Full HD (1080p)";
			
		2: costo_min= 30;
			canti_Vid4k= canti_Vid4k+1;
			calidad= "4K";
			
		3: costo_min= 50;
			calidad= "8K";
			
		De Otro Modo:
			Escribir "Por favor reinicie el sitema y elija una opción valida...";
			
	FinSegun
	
	
	//Calculando costo del video y la acumulacion de costos
	costo_vid= costo_min*duracion;
	costo_total= costo_total + costo_vid;
	
	//Acumulando minutos de edición: 
	total_minu= duracion + total_minu;
	
	Escribir "Uted a elegido la resolucion de (",calidad,",) cuyo costo por minuto de edición es de: ", costo_min,"$ Por minuto";
	Escribir "El costo total para la edición del video sería de unos: ",costo_vid,"$";
	Escribir "Desea ingresar otro proyecto//video?";
	Escribir "(1.para Si//2. para No)";
	leer decision;
	
	
	//Condición para finalizar el ciclo
Hasta Que desicion== 2

//Creando Factura
Escribir "------------------------CARGANDO FACTURA-----------------------------";
Escribir "///----------------------------------------------------------------//";
Escribir "Dinero total facturado:                ",costo_total,"$";
Escribir "Minutos de video totales:                ",total_minu,"min";
Escribir "Vídeos (Cantidad) en 4k:                ",canti_Vid4k," Vídeos";
Escribir "///----------------------------------------------------------------//";
Escribir "Gracias por usar el programa ^^";


FinAlgoritmo
