from flask import Flask, jsonify
import os
import socket

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "status": "success",
        "message": "Welcome to your Cloud-Native Flask Application!",
        "hostname": socket.gethostname(),
        "environment": os.getenv("FLASK_ENV", "production")
    }), 200

@app.route('/health')
def health():
    return jsonify({"status": "healthy"}), 200

if __name__ == '__main__':
    # Binding to 0.0.0.0 allows the app to accept traffic from outside the container
    # Running on port 5000 as per project requirements
    app.run(host='0.0.0.0', port=5000)