#Transformando informações do banco em planilha de Excel

import MySQLdb
import pandas as pd



#Conecta ao banco de dados
def create_connection():
    try:
        connection = MySQLdb.connect(
            host = 'localhost',
            database = 'pesquisa',
            user = 'root',
            password = ''
        )

        print("Conexão bem sucedidada ao MySQL")
        return connection
    except MySQLdb.Error as e:
        print(f'Erro ao conecatar ao Mysql: {e}')
        return None
    

#Extraindo dados da tabela 
def export_to_excel(connection, query, output_file):
    try:
        #Executando a consulta e obtendo os dados
        df = pd.read_sql(query, connection)

        #Exporta os dados para o excel
        df.to_excel(output_file, index=False, engine='openpyxl')
        print(f"Dados exportados com sucesso para {output_file}")
    except Exception as e:
        print(f"Erro ao exportar dados: {e}")


connection = create_connection() 

if connection:
    try:
        #Define a consulta SQL para extrair os dados
        query = "SELECT * FROM entrevistados"

        output_file = "dados_entrevistados.xlsx"

        export_to_excel(connection, query, output_file)

    finally:
        connection.close()
        print("Conexão ao MySQL foi encerrada")