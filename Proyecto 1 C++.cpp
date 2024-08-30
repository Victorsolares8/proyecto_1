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

