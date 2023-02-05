from flask import Flask,Response, request
import json

import re

app = Flask(__name__)

@app.route('/email', methods=['POST'])
def validate_email():
    email = request.json.get('email')
    if not email:
        return Response(json.dumps({"error": "Email is required."}), 400)
    return validate(email)


def validate(email):
    if not re.match(r"[^@]+@[^@]+\.[^@]+", email):
        msg = Response('{"message": "Invalid"}',mimetype='application/json',status=400)
        return msg
    msg = Response('{"message": "Valid"}',mimetype='application/json',status=200)
    return msg
    


if __name__ == '__main__':
    app.run(debug=True, port=5001, host='0.0.0.0')
