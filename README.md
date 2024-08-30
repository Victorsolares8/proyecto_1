# proyecto_1
Proyecto 1 de Algoritmos
Proyecto No. 1 
a)	Desarrollando en pseudocódigo, C++ y Python (archivos separados por lenguaje) un menú que solicite la opción a elegir, dicho menú debe contener la opción de elegir cualquiera de los dos algoritmos anteriores y la de salir. El programa debe finalizar solo si el usuario elige salir, caso contrario deberá realizar un cálculo.

Ejemplo del menú que se debe mostrar.

1.	Factorial de un número
2.	Determinar subsidio de familia
3.	Salir

Repitiendo, no se puede salir de la aplicación sin que se elija la opción 3 (para el ejemplo)

a)	Los archivos deben ser subidos a un repositorio Git (investigar), agregar el archivo READE.md y dejarlos como enlace no en dicho archivo, de igual forma las siguientes literales.

https://github.com/Victorsolares8/proyecto_1.git

b)	Diagrama de flujo del numeral 1
 


c)	Documentación externa el inciso a

Pseudocódigo:

Código:

Algoritmo MenuPrincipal
    Definir opcion, numero, i, factorial, hijos, hijos_edad_7_18 Como Entero
    Definir subsidio, subsidio_extra, subsidio_total Como Real
    
    Repetir
        Escribir "1. Factorial de un número"
        Escribir "2. Determinar subsidio de familia"
        Escribir "3. Salir"
        Leer opcion
		
        Segun opcion Hacer
            Caso 1:
                Escribir "Ingrese un número entero positivo"
                Leer numero
                factorial <- 1
                Para i <- 1 Hasta numero Con Paso 1 Hacer
                    factorial <- factorial * i
                FinPara
                Escribir "El factorial de ", numero, " es ", factorial
				
            Caso 2:
                Escribir "Ingrese el número de hijos o hijas"
                Leer hijos
                
                Si hijos = 3 Entonces
                    subsidio <- 300
                Sino
                    Si hijos >= 4 Y hijos <= 5 Entonces
                        subsidio <- 350
                    Sino
                        Si hijos > 5 Entonces
                            subsidio <- 400
                        FinSi
                    FinSi
                FinSi
                
                Escribir "Ingrese el número de hijos o hijas entre 7 y 18 años"
                Leer hijos_edad_7_18
                
                subsidio_extra <- 0.06 * subsidio * hijos_edad_7_18
                subsidio_total <- subsidio + subsidio_extra
                
                Escribir "El subsidio total es ", subsidio_total
				
            Caso 3:
                Escribir "Saliendo del programa..."
				
            De Otro Modo:
                Escribir "Opción inválida"
        FinSegun
    Hasta Que opcion = 3
FinAlgoritmo


Capturas:

 

 

C++:

Código:

#include <iostream>
using namespace std;

int main() {
    int opcion;
    do {
        cout << "1. Factorial de un numero" << endl;
        cout << "2. Determinar subsidio de familia" << endl;
        cout << "3. Salir" << endl;
        cout << "Ingrese una opcion: ";
        cin >> opcion;

        switch(opcion) {
            case 1: {
                int numero, factorial = 1;
                cout << "Ingrese un numero entero positivo: ";
                cin >> numero;
                for(int i = 1; i <= numero; i++) {
                    factorial *= i;
                }
                cout << "El factorial de " << numero << " es " << factorial << endl;
                break;
            }
            case 2: {
                int hijos, hijos_edad_7_18;
                double subsidio = 0;
                cout << "Ingrese el numero de hijos o hijas: ";
                cin >> hijos;

                if (hijos == 3) {
                    subsidio = 300.00;
                } else if (hijos >= 4 && hijos <= 5) {
                    subsidio = 350.00;
                } else if (hijos > 5) {
                    subsidio = 400.00;
                }

                cout << "Ingrese el numero de hijos o hijas entre 7 y 18 años: ";
                cin >> hijos_edad_7_18;

                double subsidio_extra = 0.06 * subsidio * hijos_edad_7_18;
                double subsidio_total = subsidio + subsidio_extra;

                cout << "El subsidio total es " << subsidio_total << endl;
                break;
            }
            case 3:
                cout << "Saliendo del programa..." << endl;
                break;
            default:
                cout << "Opcion invalida" << endl;
        }
    } while(opcion != 3);

    return 0;
}

Capturas:

 
 



Python:

Código:

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

Capturas:

 
 








