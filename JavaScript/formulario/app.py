from flask import Flask, render_template, request
import pymysql

app = Flask(__name__)

@app.route('/')

def template():
  return render_template('registro.html')

@app.route('/registro', methods=['POST'])

def registro():
  usuario = request.form['usuario']
  tipo_documento = request.form['Tipo_documento']
  documento = request.form['id']
  nombre = request.form['nombre']
  apellido = request.form['apellido']
  edad = request.form['edad']
  genero = request.form['Genero']
  email = request.form['email']
  password = request.form['contraseña']
  db = pymysql.connect(host="localhost", user="root", passwd="", db="formulario")
  cur = db.cursor()
  print("INSERT INTO registro(documento_identidad, nombres, apellidos, edad, genero, email, contraseña, tipo_de_usuario,tipo_de_documento) VALUES ("+documento+", '"+nombre+"', '"+apellido+"', "+edad+", '"+genero+"', '"+email+"', '"+password+"', '"+usuario+"', '"+tipo_documento+"')")
  cur.execute("INSERT INTO registro(documento_identidad, nombres, apellidos, edad, genero, email, contraseña, tipo_de_usuario,tipo_de_documento) VALUES ("+documento+", '"+nombre+"', '"+apellido+"', "+edad+", '"+genero+"', '"+email+"', '"+password+"', '"+usuario+"', '"+tipo_documento+"')")
  db.commit()  
  db.close()

  return "<p>Registrado exitosamente en la base de datos</p>"




if __name__ == '__main__':
  app.run(debug=True)