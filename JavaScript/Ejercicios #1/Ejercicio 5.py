pago = 5000
total = 0
for i in range(0,24):
    print("En el mes #" + str(i+1)+ " deberá pagar " + str(pago) +"$")
    total += pago
    pago *=2
        
print("En total deberá pagar " + str(total) + "$ en los 24 meses.")