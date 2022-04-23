from email.utils import parsedate_to_datetime
import random
predet = random.randint(1,20)
intentos = 0
num = 0
for i in range(0,5):
    num = int(input("Ingrese un numero del 1 al 20 para acertar: "))
    if num == predet:
        intentos += 1
        print("Usted acertó \n" + "Numero total de intentos: " + str(intentos))
        break
    elif num < predet:
        intentos += 1
        print("El numero que ingresó es menor al numero por adivinar \n" + "Vuelva a intentar")
    elif num > predet:
        intentos += 1
        print("El numero que ingresó es mayor al número por adivinar \n" + "Vuelva a intentar")
    
    if i == 4:
        print("Sus intentos han acabado. \n" + "El número correcto era " + str(predet))
