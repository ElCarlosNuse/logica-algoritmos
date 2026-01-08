Algoritmo EpicGuys
	// 1. Declaración de Variables
	Definir NombCliente Como Caracter;
	Definir opcio, Canti Como Entero;
	Definir precio, precioBruto, montoIVA, precioNeto Como Real;
	
	// Inicialización de variables
	NombCliente = "";
	opcio = 0;
	Canti = 0;
	precioBruto = 0;
	precioNeto = 0;
	montoIVA = 0;
	precio = 0;
	
	// 2. Petición del nombre del cliente
	Escribir "Ingrese el nombre del cliente:";
	Leer NombCliente;
	
	// 3. Impresión del Catálogo
	Escribir "CATÁLOGO DISPONIBLE:";
	Escribir "1) GTI: 60$";
	Escribir "2) Sus: 8$";
	Escribir "3) Sanic: 55$";
	Escribir "4) Fornipe: 50$";
	Escribir "5) Pacmin: 20$";
	Escribir "Seleccione el número del producto que desea comprar:";
	Leer opcion;
	
	Escribir "Ingrese la cantidad que desea comprar:";
	Leer Canti;
	
	// 4. Proceso de Cálculo de Compra Según opción
	Segun opcion Hacer
		1:
			precio = 60;
		2:
			precio = 8;
		3:
			precio = 55;
		4:
			precio = 50;
		5:
			precio = 20;
		De Otro Modo:
			Escribir "Opción Inválida";
			precio = 0;
	FinSegun;
	
	// Cálculos matemáticos
	precioBruto = precio * Canti;
	montoIVA = precioBruto * 0.16;
	precioNeto = precioBruto + montoIVA;
	
	// 5. Impresión de factura
	Escribir " FACTURA";
	Escribir "_________";
	Escribir "Cliente: ", NombCliente;
	Escribir " Monto Bruto a pagar: ", precioBruto, "$";
	Escribir " IVA 16%: ", montoIVA, "$";
	Escribir "Monto neto a pagar más el IVA: ", precioNeto, "$";
	Escribir "_________";
	
	Escribir "¡Gracias por su compra en EpicGuys!";
	
FinAlgoritmo