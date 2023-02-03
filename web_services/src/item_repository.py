import sqlite3
import csv


class ItemRepository:

    DBPATH = './todo.db'

    @staticmethod
    def connect_db():
        return sqlite3.connect(ItemRepository.DBPATH)

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
            conn.close()
            return {
                'Message': f' item {id} deleted successfully'
            }
        except Exception as e:
            raise Exception("Errors: ", e)

    @staticmethod
    def update_item(id, item, status, reminder):
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            query = "UPDATE items SET "
            if item is not None:
                query += (" item = '" + str(item) + "'")
                if (status is not None) or (reminder is not None):
                    query += (", ")
            if status is not None:
                query += ("status = '" + str(status) + "'")
                if (reminder is not None):
                    query += (", ")
            if reminder is not None:
                query += ("reminder = " + str(reminder))
            query += (" WHERE id = " + str(id))
            print(query)
            c.execute(query)
            conn.commit()
            conn.close()
            return {
                'Message': f' item {id} updated successfully'
            }
        except Exception as e:
            raise Exception('Error: ', e)

    @staticmethod
    def add_user(name,age):
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            query = "INSERT INTO users (name,age) VALUES (?,?)"
            c.execute(query, (name,age))
            conn.commit()
            conn.close()
            return {'Message': f' item updated successfully'}
        except Exception as e:
            raise Exception('Error: ', e)
    @staticmethod
    def add_item_to_csv():
        try:
            conn = ItemRepository.connect_db()
            c = conn.cursor()
            columns = ["id","item","status","reminder"]
            rows = c.execute('select * from items')
            with open('../items.csv', 'w') as csvfile:
                csvwriter = csv.writer(csvfile)
                csvwriter.writerow(columns)
                csvwriter.writerows(rows)
                return {"status":"Saved to CSV file"}
        except Exception as e:
            raise Exception('Error: ', e)
        finally:
            conn.close()
