from flask import Flask, Response, request
from item_actions import ItemActions

import json

app = Flask(__name__)
item_actions = ItemActions()


@app.route('/')
def hello():
    return 'Hello World!'

@app.route('/items', methods = ['POST'])
def add_new_item():
    request_data = request.get_json()
    item = request_data['item']
    status = request_data['status']
    reminder = request_data['reminder']
    added_item = item_actions.add_item(item,status, reminder)
    if added_item == {}:
        return Response("{'error': 'Erro addding the item'}", mimetype='application/json', status=500)
    return Response(json.dumps(added_item), mimetype='application/json', status=201)


@app.route('/items',methods = ['GET'])
def get_all_items():
    items = item_actions.get_all_items()
    print(items)
    return Response(json.dumps(items), mimetype='application/json',status = 200)


@app.route('/items/<int:id>', methods=['GET'])
def get_item(id):
    items = item_actions.get_item(id)
    print(items)
    return Response(json.dumps(items), mimetype='application/json', status=200)


@app.route('/items/del/<int:id>', methods=['POST'])
def delete_a_menu_item(id):
    items = item_actions.delete_item(id)
    print(items)
    return Response(json.dumps(items), mimetype='application/json', status=200)


@app.route('/items/<int:id>', methods=['PUT'])
def update_item(id):
    request_data = request.get_json()
    try:
        request_data['item']
        item = request_data['item']
    except:
        item = None
    try:
        request_data['status']
        status = request_data['status']
    except:
        status = None
    try:
        request_data['reminder']
        reminder = request_data['reminder']
    except:
        reminder = None
    added_item = item_actions.update_item(id,item, status, reminder)
    if added_item == {}:
        return Response("{'error': 'Error updating the item'}", mimetype='application/json', status=500)
    return Response(json.dumps(added_item), mimetype='application/json', status=201)


@app.route('/user/add_user', methods=['POST'])
def add_user():
    request_data = request.get_json()
    name = request_data['name']
    age = request_data['age']
    added_item = item_actions.add_user(name, age)
    if added_item == {}:
        return Response("{'error': 'Error addding the item'}",mimetype='application.json',status=500)
    return Response(json.dumps(added_item),mimetype='application/json',status=201)


@app.route('/csv', methods=['POST'])
def add_item_to_csv():
    added_item = item_actions.add_item_to_csv()
    return Response(json.dumps(added_item),mimetype='application/json',status=201)



if __name__ == '__main__':
    app.run(debug=True, port=5000, host='0.0.0.0')
