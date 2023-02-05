from flask import Flask, Response 
import json 
import requests

app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():
    return "Hello World!"

@app.route('/todo/<int:todo_id>', methods=['GET'])
def todo(todo_id):
    return validate(todo_id)

def validate(todo_id):
    if todo_id < 1 or todo_id > 200:
        return Response('{"msg" : "Input must be an integer between 1 to 200."}', status = 400)
    response = requests.get(f'https://jsonplaceholder.typicode.com/todos/{todo_id}')
    if response.status_code == 200:
        return Response(response.json(),mimetype="application/json",status = 200)
    return "Todo not found", 404

if __name__ == '__main__':
    app.run(debug = True,port = 5003,host = '0.0.0.0')