import mysql.connector

try:
    conexao = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="aula_python_bd"
    )

    print("Conexão realizada com sucesso!")

    cursor = conexao.cursor()

    sql = "SELECT * FROM alunos"
    cursor.execute(sql)

    resultados = cursor.fetchall()

    print("\nLista de alunos:")
    for linha in resultados:
        print(f"ID: {linha[0]} | Nome: {linha[1]} | Curso: {linha[2]} | Idade: {linha[3]}")

except mysql.connector.Error as erro:
    print(f"Erro ao conectar ao banco de dados: {erro}")

finally:
    if 'cursor' in locals():
        cursor.close()
    if 'conexao' in locals() and conexao.is_connected():
        conexao.close()
        print("\nConexão encerrada.")