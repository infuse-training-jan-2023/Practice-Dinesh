import sqlite3

import sqlite3

connection = sqlite3.connect('todo.db')

with open("DB/schema.sql") as f:
    connection.executescript(f.read())

cursor = connection.cursor()

cursor.execute("INSERT INTO items (item,status,reminder) VALUES(?,?,?)",
('go to museums','not started',True)
)

cursor.execute("INSERT INTO items (item,status,reminder) VALUES(?,?,?)",
('assingnments','working on it',True)
)

cursor.execute("INSERT INTO users (name,age) VALUES(?,?)",
('rohan',57)
)

cursor.execute("INSERT INTO users (name,age) VALUES(?,?)",
('omkar',23)
)
connection.commit()
connection.close()