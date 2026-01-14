#Definicion de variables
cost_extra= 0
costo_base= 0
costo_completo= 0
seguir_turno= "s"
num_noches= 0
nombre= ""
habi= 0
preci_habi= 0
habi= 0
agrega= ""
huesped= 0
costo_acumula= 0
spa_acumula= 0
total_extras_cliente = 0


print("Hola Bienvenido al hotel ")

#inicio del Bucle
while seguir_turno.strip()== "S" or seguir_turno.strip()== "s":
    print("//-------------------CARGANDO A CLIENTE-----------------------//")
    nombre= input("Ingrese su nombre: ")
    print(f"Muy bien {nombre} ahora ingrese la cantidad de noches que paso en el hotel: ")
    num_noches= int(input(""))
    print("Ahora debera de ingresar el tipo de habitacion en la que paso la noche: ")
    habi= int(input(" 1: Para Estándar \n 2: Para Suite Ejecutiva: "))

    #Deci de el hotel
    if habi== 1: 
        preci_habi= 60
    elif habi== 2: 
        preci_habi= 120
    else:
       print("Opción invalida")

    costo_base= preci_habi*num_noches 
    print(f"El precio de la habitacion es de: {preci_habi}$ La noche.")
    print(f"Con la cantidad de noches seleccionadas ese precio asciende a: {costo_base}$")
    agrega= input("¿Desea agregar un consumo extra? (S/N)")
#Decision para producto extra
    while agrega.lower()== "s":
        print("Menu de extras: ")
        print("1: Para Restaurante ($25).\n2: Para Spa / Masaje ($50).\n3: Para Minibar ($15)")
        deci=int(input("Cual desea agregar?: "))
        
        match deci:
            case 1: 
                print("Usted a decidido escoger RESTAURANTE"),
                cost_extra= 25,
            case 2:
                print("Usted a decidido escoger SPA")
                cost_extra= 50
                spa_acumula= spa_acumula + cost_extra
            case 3:
                print("Usted a decidido escoger MINIBAR")
                cost_extra= 15
            case _:
                print("Desicion invalda")

        total_extras_cliente += cost_extra
        print(f"El costo de el producto agregado es de unos: {cost_extra}$")
        agrega= input("Desea agregar otro producto?: (S/N)")

    costo_completo= costo_base + total_extras_cliente
    print(f"Bien entonces en total el costo de la habitacion mas los extras es de unos: {costo_completo}$")

    huesped= huesped + 1
    costo_acumula= costo_completo + costo_acumula
    seguir_turno= input("Desea ingresar a otro cliente? (S/N): ")
   
#Factura final
print("//----------------------------CARGANDO FACTURA FINAL---------------------//")
print(f"El numero de huspedes atendidos asciende a: {huesped}")
print(f"EL total en ventas acumulado asciende a: {costo_acumula}$")
print(f"Y los ingresos generados por el Spa fueron de: {spa_acumula}$")
print("//---------------------FINALIZANDO EL PROGRAMA----------------------------//")
print("//PROGRAMA FINALIZADO//")


