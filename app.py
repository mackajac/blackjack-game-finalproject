from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route("/health")
def health():
    return jsonify({
        "status": "healthy",
        "environment": os.environ.get("FLASK_ENV", "development")
    })

@app.route("/")
def home():
    return "Blackjack CI/CD application is running"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
