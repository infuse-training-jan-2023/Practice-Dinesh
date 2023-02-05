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
    if len(password) < 8:
        error_msg = Response("{'error' : 'Password must be at least 8 characters long'.}",status = 400)
        return error_msg
    if not re.search("[a-z]", password) or not re.search("[A-Z]", password):
        error_msg = Response("{'error':'Password must contain both lowercase and uppercase letters.'}",status = 400)
        return error_msg
    if not re.search("[!@#\$%\^\&\*\(\)\-\_\=\+\{\}\[\]\|\:\;\"<>,\.\?]", password):
        error_msg = Response("{'error':'Password must contain at least one special character.'}",status = 400)
        return error_msg
    msg = Response("{'msg':'valid'}",mimetype = 'application/json',status = 200)
    return msg


if __name__ == '__main__':
    app.run(debug=True, port=5002, host='0.0.0.0')

