from flask import Flask, request,Response
import json
import re

app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello_world():
    return "Hello World!"

@app.route('/password', methods=['POST'])
def validate_password():
    data = request.get_json()
    password = data['password']
    if not data:
        return Response(json.dumps({"error": "Password is required."}), 400)
    return validate(password)

def validate(password):
    if re.search('^(?=.*?[A-Z])(?=.*?[@_!#$%^&*()<>?/\|}{~:]).{8,}$',password):
        valid_msg = Response("{'msg':'valid'}",mimetype = 'application/json',status = 200)
        return valid_msg
    invalid_msg = Response("{'msg':'invalid'}",mimetype = 'application/json',status = 400)
    return invalid_msg

if __name__ == '__main__':
    app.run(debug=True, port=5002, host='0.0.0.0')

