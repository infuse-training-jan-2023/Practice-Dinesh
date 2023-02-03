from flask import Flask, request, jsonify
import re

app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello_world():
    return "Hello World!"

@app.route('/validate_password', methods=['POST'])
def validate_password():
    password = request.json.get('password')
    if not password:
        return jsonify({"error": "Password is required."}), 400

    if len(password) < 8:
        return jsonify({"error": "Password must be at least 8 characters long."}), 400

    if not re.search("[a-z]", password) or not re.search("[A-Z]", password):
        return jsonify({"error": "Password must contain both lowercase and uppercase letters."}), 400

    if not re.search("[!@#\$%\^\&\*\(\)\-\_\=\+\{\}\[\]\|\:\;\"<>,\.\?]", password):
        return jsonify({"error": "Password must contain at least one special character."}), 400

    return jsonify({"message": "Password is valid."}), 200


if __name__ == '__main__':
    app.run(debug=True)

