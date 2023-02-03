from item_repository import ItemRepository

class ItemActions:
    def __init__(self) -> None:
        self.item_repo = ItemRepository()

    def get_item(self,id):
        try:
          items = self.item_repo.get_item(id)
          res = []
          for item in items:
            res.append({
              'id': item[0],
              'item': item[1],
              'status': item[2],
              'reminder': item[3],
            })
          return res
        except Exception as e:
          print(e)
          return {}


    def delete_item(self,id):
        try:
            item = self.item_repo.delete_item(id)
            return item
        except Exception as e:
            print(e)
            return {}
    
    def update_item(self,id,item, status, reminder):
        try:
            item = self.item_repo.update_item(id,item, status, reminder)
            return item
        except Exception as e:
            print(e)
            return {}

    def add_user(self,name,age):
        try:
            item = self.item_repo.add_user(name,age)
            return item
        except Exception as e:
            print(e)
            return {}


    def add_item_to_csv(self):
        try:
            item = self.item_repo.add_item_to_csv()
            return item
        except Exception as e:
            print(e)
            return {}