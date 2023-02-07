import sqlite3
import csv

class ItemRepository:

    DBPATH = './todo.db'
    connection = None

    @staticmethod
    def connect_db():
        return ItemRepository.connection if ItemRepository.connection is not None else sqlite3.connect(ItemRepository.DBPATH)

    @staticmethod
    def get_item(id):
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            rows = c.execute('select * from items where id = ?', (id,))
            return rows
        except Exception as e:
            raise Exception('Error: ', e)

    @staticmethod
    def delete_item(id):
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            c.execute("DELETE FROM items WHERE id=?", (id,))
            conn.commit()
            return {
                'Message': f' item {id} deleted successfully'
            }
        except Exception as e:
            raise Exception("Errors: ", e)

    @staticmethod
    def update_item(id,request_data):
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            for key,value in request_data.items():
                c.execute("UPDATE items SET " + key + " =? WHERE id =?", (value, id))
            conn.commit()
            return {
                'Message': f' item {id} updated successfully'
            }
        except Exception as e:
            raise Exception('Error: ', e)

    @staticmethod
    def get_all_items():
      try:
        conn = ItemRepository.connect_db()
        c = conn.cursor()
        rows = c.execute('select * from items')
        return rows
      except Exception as e:
        raise Exception('Error: ', e)

    @staticmethod
    def add_item(item,status, reminder):
      try:
        conn = ItemRepository.connect_db()
        c = conn.cursor()
        insert_cursor = c.execute('insert into items(item, status, reminder) values(?,?,?)', (item, status, reminder))
        conn.commit()
        return {
          'id': insert_cursor.lastrowid,
          'item': item,
          'status': status,
          'reminder': reminder
        }
      except Exception as e:
        raise Exception('Error: ', e)