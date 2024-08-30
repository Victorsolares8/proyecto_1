def calcular_factorial():
    numero = int(input("Ingrese un número entero positivo: "))
    factorial = 1
    for i in range(1, numero + 1):
        factorial *= i
    print(f"El factorial de {numero} es {factorial}")

def calcular_subsidio():
    hijos = int(input("Ingrese el número de hijos o hijas: "))
    if hijos == 3:
        subsidio = 300.00
    elif 4 <= hijos <= 5:
        subsidio = 350.00
    elif hijos > 5:
        subsidio = 400.00
    else:
        subsidio = 0.00

    hijos_edad_7_18 = int(input("Ingrese el número de hijos o hijas entre 7 y 18 años: "))
    subsidio_extra = 0.06 * subsidio * hijos_edad_7_18
    subsidio_total = subsidio + subsidio_extra

    print(f"El subsidio total es {subsidio_total}")

def menu():
    while True:
        print("1. Factorial de un número")
        print("2. Determinar subsidio de familia")
        print("3. Salir")
        opcion = int(input("Ingrese una opción: "))

        if opcion == 1:
            calcular_factorial()
        elif opcion == 2:
            calcular_subsidio()
        elif opcion == 3:
            print("Saliendo del programa...")
            break
        else:
            print("Opción inválida")

menu()
