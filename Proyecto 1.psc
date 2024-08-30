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
