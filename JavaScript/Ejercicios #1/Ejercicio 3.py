veces = int(input("¿Cuantos numero quiere ingresar?: "))
num = []
mayor = 0
menor = 0
igual = 0
for i in range(0, veces):
    num.append(int(input("Ingrese el número (#" + str(i+1) + ")")))
    
for j in range(0, len(num)):
    if num[j] == 0:
        igual += 1
    elif num[j] < 0:
        menor += 1
    elif num[j] > 0:
        mayor += 1

print("Entre los número que usted ingreso hay: \n" + "Números iguales a 0:  " + str(igual) + "\n" + "Numeros menor a 0: " + str(menor) + "\n" + "Numeros mayores a 0: " + str(mayor))
