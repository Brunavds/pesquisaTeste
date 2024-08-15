#Função para conectar ao banco de dados
import MySQLdb

def create_connection():
    try:
        connection = MySQLdb.connect(
            host = 'localhost',
            database = 'pesquisa',
            user = 'root',
            password = ''
        )
        print("Conexão bem sucedida ao MySQL")
    except MySQLdb.Error as e: 
        print(f"Erro ao conectar ao MySql: {e}")
        connection = None
    return connection

#Função para inserir dados na tabela de entrevistados 

def insert_entrevistados(connection, entrevistados):
    insert_query = '''
    INSERT INTO entrevistados (nome, email, telefone, operadora, resposta)
    VALUES(%s, %s, %s, %s, %s);
    '''

    cursor = connection.cursor()
    try:
        cursor.execute(insert_query, (
            entrevistados.nome,
            entrevistados.email,
            entrevistados.telefone,
            entrevistados.operadora,
            entrevistados.resposta
        ))
        connection.commit()
        print("Dados inseridos com sucesso")
    except MySQLdb.Error as e:
        print(f"Erro ao inserir dados: {e}")
    finally:
        cursor.close()


class Pesquisa:
    def __init__(self, connection):
        self.connection = connection

    def adicionar_entrevistados(self, entrevistados):
        insert_entrevistados(self.connection, entrevistados)


class Entrevistados:
    def __init__(self, nome,email, telefone, operadora, resposta):
        self.nome = nome
        self.email = email
        self.telefone = telefone
        self.operadora = operadora
        self.resposta = resposta
        


    def coletar_resposta():
        print("****** Pesquisa de Satisfação ******")
        nome = input("Nome do entrevistado: ")
        email = input("Email: ")
        telefone = input("Telefone: ")
        operadora = input("Qual a sua operadora? ")
        resposta = input("Você está satisfeito com sua operadora? Sim|Não ")
        return Entrevistados(nome, email, telefone, operadora, resposta)
    

#Criação de conexão com o banco de dados
connection = create_connection()

if connection: 
    #Coletar as resposta e inserir no banco de dados
    entrevistados = Entrevistados.coletar_resposta()
    pesquisa = Pesquisa(connection)
    pesquisa.adicionar_entrevistados(entrevistados)

    #Fechamento de conexão
    connection.close()
    print("Pesquisa registrada com sucesso!")