import sqlite3


class UserRepository:

    DBPATH = './todo.db'
    connection = None

    @staticmethod
    def connect_db():
        return UserRepository.connection if UserRepository.connection is not None else sqlite3.connect(UserRepository.DBPATH)

    @staticmethod
    def add_user(name, age):
        try:
            conn = UserRepository.connect_db()
            c = conn.cursor()
            query = "INSERT INTO users (name,age) VALUES (?,?)"
            c.execute(query, (name, age))
            conn.commit()
            return ('user added successfully')
        except Exception as e:
            raise Exception('Error: ', e)
