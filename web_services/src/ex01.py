from flask import Flask, request, jsonify
import re

app = Flask(__name__)

@app.route('/validate_email', methods=['POST'])
def validate_email():
    email = request.json.get('email')
    if not email:
        return jsonify({"error": "Email is required."}), 400

    if not re.match(r"[^@]+@[^@]+\.[^@]+", email):
        return jsonify({"message": "Invalid"}), 400

    return jsonify({"message": "Valid"}), 200
    

if __name__ == '__main__':
    app.run(debug=True)
