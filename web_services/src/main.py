from flask import Flask, Response, request
from item_actions import ItemActions
from item_repository import ItemRepository
from user_repository import UserRepository

import json

app = Flask(__name__)
item_actions = ItemActions()
item_repo = ItemRepository()
user_repo = UserRepository()


@app.route('/')
def hello():
    return 'Hello World!'

@app.route('/items', methods = ['POST'])
def add_new_item():
    request_data = request.get_json()
    item = request_data['item']
    status = request_data['status']
    reminder = request_data['reminder']
    added_item = item_repo.add_item(item,status, reminder)
    if added_item == {}:
        return Response("{'error': 'Erro addding the item'}", mimetype='application/json', status=500)
    return Response(json.dumps(added_item), mimetype='application/json', status=201)


@app.route('/items',methods = ['GET'])
def get_all_items():
    items = item_actions.get_all_items()
    return Response(json.dumps(items), mimetype='application/json',status = 200)


@app.route('/items/<int:id>', methods=['GET'])
def get_item(id):
    items = item_actions.get_item(id)
    return Response(json.dumps(items), mimetype='application/json', status=200)


@app.route('/items/del/<int:id>', methods=['POST'])
def delete_a_menu_item(id):
    item = item_actions.delete_item(id)
    if item == {}:
        return Response("{'error': 'Error deleting the item'}", mimetype='application/json', status=500)
    return Response({json.dumps(item)}, mimetype='application/json', status=200)


@app.route('/items/<int:id>', methods=['PUT'])
def update_item(id):
    request_data = request.get_json()
    added_item = item_repo.update_item(id,request_data)
    if added_item == {}:
        return Response("{'error': 'Error updating the item'}", mimetype='application/json', status=500)
    return Response(json.dumps(added_item), mimetype='application/json', status=201)


@app.route('/user/add_user', methods=['POST'])
def add_user():
    request_data = request.get_json()
    name = request_data['name']
    age = request_data['age']
    print(name)
    added_item = user_repo.add_user(name, age)
    print(added_item)
    if added_item == {}:
        return Response("{'error': 'Error addding the item'}",mimetype='application.json',status=500)
    return Response(json.dumps(added_item),mimetype='application/json',status=201)


@app.route('/csv', methods=['POST'])
def add_item_to_csv():
    added_item = item_actions.add_item_to_csv()
    return Response(json.dumps(added_item),mimetype='application/json',status=201)


if __name__ == '__main__':
    app.run(debug=True, port=5000, host='0.0.0.0')
