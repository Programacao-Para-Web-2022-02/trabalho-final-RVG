import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="password",
  db="db"
)

mycursor = mydb.cursor()

class SQL:
  def __init__(self):
     self.cnx = mysql.connector.connect(
                host="localhost",
                user="root",
                password="password",
                db="db"
              )

  def executar(self, comando, parametros = []):
       cs = self.cnx.cursor()
       cs.execute(comando, parametros)
       self.cnx.commit()
       cs.close()
       return True

  def consultar(self, comando, parametros=[]):
      cs = self.cnx.cursor()
      cs.execute(comando, parametros)
      return cs